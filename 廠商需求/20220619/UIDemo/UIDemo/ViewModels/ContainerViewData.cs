using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UIDemo.Models;

namespace UIDemo.ViewModels
{
    public class ContainerViewData
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
        /// 刀具資訊的採購料號
        /// </summary>
        public string PurchasedPartNumber { get; set; }

        /// <summary>
        /// 刀具型式ID
        /// </summary>
        public int? CuttingToolsTypeId { get; set; }

        /// <summary>
        /// 刀具型式編號
        /// </summary>
        public string CuttingToolsTypeNumber { get; set; }

        /// <summary>
        /// 刀具型式名稱
        /// </summary>
        public string CuttingToolsTypeName { get; set; }

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
        /// 儲位編號
        /// </summary>
        public string StoragePositionNumber { get; set; }

        /// <summary>
        /// 儲位X軸
        /// </summary>
        public int? PositionX { get; set; }

        /// <summary>
        /// 儲位Y軸
        /// </summary>
        public int? PositionY { get; set; }

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

        public ContainerViewData(Container container, CuttingToolsInformation information, CuttingToolsType type, StoragePosition storagePosition)
        {
            Id = container.Id;
            CuttingToolsInformationId = container.CuttingToolsInformationId;
            Number = container.Number;
            Name = container.Name;
            StoragePositionId = container.StoragePositionId;
            Length = container.Length;
            Width = container.Width;
            Height = container.Height;
            IsObsolete = container.IsObsolete;
            IsBorrowed = container.IsBorrowed;

            if (information != null)
            {
                PurchasedPartNumber = information.PurchasedPartNumber;
            }

            if (type != null)
            {
                CuttingToolsTypeNumber = type.Number;
                CuttingToolsTypeName = type.Name;
            }

            if (storagePosition != null)
            {
                StoragePositionNumber = storagePosition.Number;
                PositionX = storagePosition.PositionX;
                PositionY = storagePosition.PositionY;
            }
        }
    }
}
