using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UIDemo.Models
{
    /// <summary>
    /// 刀具型式
    /// </summary>
    public class CuttingToolsType
    {
        /// <summary>
        /// 刀具型式ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// 刀具型式編號
        /// </summary>
        public string Number { get; set; }

        /// <summary>
        /// 刀具型式名稱
        /// </summary>
        public string Name { get; set; }
    }
}
