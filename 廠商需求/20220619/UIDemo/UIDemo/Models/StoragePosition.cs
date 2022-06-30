using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UIDemo.Models
{
    /// <summary>
    /// 刀具儲位
    /// </summary>
    public class StoragePosition
    {
        /// <summary>
        /// 儲位ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// 儲位編號
        /// </summary>
        public string Number { get; set; }

        /// <summary>
        /// 儲位X軸
        /// </summary>
        public int PositionX { get; set; }

        /// <summary>
        /// 儲位Y軸
        /// </summary>
        public int PositionY { get; set; }
    }
}
