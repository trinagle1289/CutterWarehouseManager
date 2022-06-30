using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UIDemo.Models
{
    /// <summary>
    /// 刀具資訊
    /// </summary>
    public class CuttingToolsInformation
    {
        /// <summary>
        /// 刀具資訊ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// 刀具型式ID
        /// </summary>
        public int TypeId { get; set; }

        /// <summary>
        /// 採購料號
        /// </summary>
        public string PurchasedPartNumber { get; set; }
    }
}
