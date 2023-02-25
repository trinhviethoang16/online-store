﻿using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace ProjectOnlineStore.Models
{
    public class RegisterViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} and at max {1} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        [Display(Name = "Họ")]
        [StringLength(100, ErrorMessage = "Họ không thể quá 100 kí tự.")]
        public string? FirstName { get; set; }

        [Display(Name = "Tên")]
        [StringLength(100, ErrorMessage = "Tên không thể quá 100 kí tự.")]
        public string? LastName { get; set; }

        [Display(Name = "Tuổi")]
        [Range(0, 150)]
        public int? Age { get; set; }

        [Display(Name = "Số điện thoại")]
        [StringLength(12, ErrorMessage = "Số điện thoại quá dài", MinimumLength = 9)]
        public string? Phone { get; set; }

        [Display(Name = "Địa chỉ")]
        [StringLength(200, ErrorMessage = "Địa chỉ không thể quá 200 kí tự")]
        public string? Address { get; set; }
    }
}
