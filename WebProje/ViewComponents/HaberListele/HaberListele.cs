using Microsoft.AspNetCore.Mvc;
using System.Linq;
using WebProje.Models;

namespace WebProje.ViewComponents.HaberListele
{
    public class HaberListele : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            Context c = new Context();
            var d = c.Habers.ToList();
            return View(d);
        }
    }
}