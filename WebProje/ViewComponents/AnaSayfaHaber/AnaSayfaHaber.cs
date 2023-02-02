using Microsoft.AspNetCore.Mvc;
using System.Linq;
using WebProje.Models;

namespace WebProje.ViewComponents.AnaSayfaHaber
{
    public class AnaSayfaHaber : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            Context c = new Context();
            var d = c.Habers.ToList();
            return View(d);
        }
    }
}