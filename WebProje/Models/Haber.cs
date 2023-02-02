using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebProje.Models
{
    public class Haber : TagHelper
    {
        [Key]
        public int Id { get; set; }
        public string Baslik { get; set; }
        public string Konu { get; set; }
        public string Aciklama { get; set; }
        public string ResimYol { get; set; }
        [NotMapped]
        public IFormFile Resim { get; set; }
    }
}
