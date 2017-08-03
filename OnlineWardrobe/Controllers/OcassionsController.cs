using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineWardrobe.Models;

namespace OnlineWardrobe.Controllers
{
    public class OcassionsController : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: Ocassions
        public ActionResult Index()
        {
            return View(db.Ocassions.ToList());
        }

        // GET: Ocassions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ocassion ocassion = db.Ocassions.Find(id);
            if (ocassion == null)
            {
                return HttpNotFound();
            }
            return View(ocassion);
        }

        // GET: Ocassions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Ocassions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OcassionID,Ocassion1")] Ocassion ocassion)
        {
            if (ModelState.IsValid)
            {
                db.Ocassions.Add(ocassion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ocassion);
        }

        // GET: Ocassions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ocassion ocassion = db.Ocassions.Find(id);
            if (ocassion == null)
            {
                return HttpNotFound();
            }
            return View(ocassion);
        }

        // POST: Ocassions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OcassionID,Ocassion1")] Ocassion ocassion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ocassion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ocassion);
        }

        // GET: Ocassions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ocassion ocassion = db.Ocassions.Find(id);
            if (ocassion == null)
            {
                return HttpNotFound();
            }
            return View(ocassion);
        }

        // POST: Ocassions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ocassion ocassion = db.Ocassions.Find(id);
            db.Ocassions.Remove(ocassion);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
