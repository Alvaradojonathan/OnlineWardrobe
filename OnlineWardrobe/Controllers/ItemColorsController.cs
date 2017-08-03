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
    public class ItemColorsController : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: ItemColors
        public ActionResult Index()
        {
            return View(db.ItemColors.ToList());
        }

        // GET: ItemColors/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ItemColor itemColor = db.ItemColors.Find(id);
            if (itemColor == null)
            {
                return HttpNotFound();
            }
            return View(itemColor);
        }

        // GET: ItemColors/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ItemColors/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ColorID,Color")] ItemColor itemColor)
        {
            if (ModelState.IsValid)
            {
                db.ItemColors.Add(itemColor);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(itemColor);
        }

        // GET: ItemColors/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ItemColor itemColor = db.ItemColors.Find(id);
            if (itemColor == null)
            {
                return HttpNotFound();
            }
            return View(itemColor);
        }

        // POST: ItemColors/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ColorID,Color")] ItemColor itemColor)
        {
            if (ModelState.IsValid)
            {
                db.Entry(itemColor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(itemColor);
        }

        // GET: ItemColors/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ItemColor itemColor = db.ItemColors.Find(id);
            if (itemColor == null)
            {
                return HttpNotFound();
            }
            return View(itemColor);
        }

        // POST: ItemColors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ItemColor itemColor = db.ItemColors.Find(id);
            db.ItemColors.Remove(itemColor);
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
