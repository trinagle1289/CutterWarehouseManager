using System;
using System.Collections.Generic;
using System.Text;

namespace UIDemo.Models
{
    /// <summary>
    /// 裝刀具的盒子
    /// </summary>
    public class Container
    {
        /// <summary>
        /// 盒子ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// 盒子狀的刀具的刀具資訊ID
        /// </summary>
        public int? CuttingToolsInformationId { get; set; }

        /// <summary>
        /// 盒子編號
        /// </summary>
        public string Number { get; set; }

        /// <summary>
        /// 盒子名稱
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 儲位ID
        /// </summary>
        public int? StoragePositionId { get; set; }

        /// <summary>
        /// 盒子長度
        /// </summary>
        public decimal Length { get; set; }

        /// <summary>
        /// 盒子寬度
        /// </summary>
        public decimal Width { get; set; }

        /// <summary>
        /// 盒子高度
        /// </summary>
        public decimal Height { get; set; }

        /// <summary>
        /// 是否作廢
        /// </summary>
        public bool IsObsolete { get; set; } = false;

        /// <summary>
        /// 是否被領用
        /// </summary>
        public bool IsBorrowed { get; set; } = false;
    }
}
