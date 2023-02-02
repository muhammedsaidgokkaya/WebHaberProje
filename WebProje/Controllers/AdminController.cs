using Microsoft.AspNetCore.Components.Routing;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection.Metadata;
using System.Threading.Tasks;
using System;
using WebProje.Models;
using System.Linq;
using Microsoft.AspNetCore.Authentication;

namespace WebProje.Controllers
{
    public class AdminController : Controller
    {
        private readonly ILogger<AdminController> _logger;
        private readonly IWebHostEnvironment _webHost;

        Context c = new Context();

        public AdminController(ILogger<AdminController> logger, IWebHostEnvironment webHost)
        {
            _logger = logger;
            _webHost = webHost;
        }

        public IActionResult AnaSayfa()
        {
            return View();
        }

        public IActionResult HaberAdd()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> HaberAdd(Haber haber)
        {
            if (ModelState.IsValid)
            {
                if (haber.Resim == null)
                {
                    c.Habers.Add(haber);
                    c.SaveChanges();
                }
                else if (haber.Resim != null)
                {
                    string wwwRootPath = _webHost.WebRootPath;
                    string filename = Path.GetFileNameWithoutExtension(haber.Resim.FileName);
                    string extension = Path.GetExtension(haber.Resim.FileName);
                    haber.ResimYol = filename = filename + DateTime.Now.ToString("yymmssfff") + extension;
                    string path = Path.Combine(wwwRootPath + "/Resimler/HaberResim/", filename);
                    using (var filestream = new FileStream(path, FileMode.Create))
                    {
                        await haber.Resim.CopyToAsync(filestream);
                    }
                    c.Habers.Add(haber);
                    c.SaveChanges();
                }
            }
            return View();
        }

        public IActionResult HaberUpdate(int id)
        {
            var guncelle = c.Habers.Find(id);
            return View(guncelle);
        }

        [HttpPost]
        public async Task<IActionResult> HaberUpdate(Haber haber)
        {
            if (ModelState.IsValid)
            {
                if (haber.Resim == null)
                {
                    c.Habers.Update(haber);
                    c.SaveChanges();
                }
                else if (haber.Resim != null)
                {
                    string wwwRootPath = _webHost.WebRootPath;
                    string filename = Path.GetFileNameWithoutExtension(haber.Resim.FileName);
                    string extension = Path.GetExtension(haber.Resim.FileName);
                    haber.ResimYol = filename = filename + DateTime.Now.ToString("yymmssfff") + extension;
                    string path = Path.Combine(wwwRootPath + "/Resimler/HaberResim/", filename);
                    using (var filestream = new FileStream(path, FileMode.Create))
                    {
                        await haber.Resim.CopyToAsync(filestream);
                    }
                    c.Habers.Update(haber);
                    c.SaveChanges();
                }
            }
            return RedirectToAction("HaberAdd", "Admin");
        }

        public IActionResult HaberDelete(int id)
        {
            var sil = c.Habers.Find(id);
            c.Habers.Remove(sil);
            c.SaveChanges();
            return RedirectToAction("HaberAdd", "Admin");
        }

        public async Task<IActionResult> LogOut()
        {
            await HttpContext.SignOutAsync();
            return RedirectToAction("Index", "Login");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
