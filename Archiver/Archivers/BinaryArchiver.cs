﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using Archiver.EventArgs;
using Archiver.Nodes;
using Archiver.Utils;

namespace Archiver.Archivers
{
  public class BinaryArchiver : IArchiver
  {
    #region Public event

    public event ReportProgress ReportArchivationProgress;
    public event ReportProgress ReportDeArchivationProgress;

    #endregion

    #region Public Method
    public Task Archive(string sourcePath, string destinationPath)
    {
      return Task.Factory.StartNew(() =>
      {
        if (File.Exists(sourcePath))
        {
          var fileName = Path.GetFileName(sourcePath);
          var folderName = Path.GetFileNameWithoutExtension(sourcePath);
          var archiveSize = FolderSizeCalculator.GetFolderSize(sourcePath);
          var folderNode = new FolderNode(folderName, archiveSize);
          folderNode.ReportArchivationProgress += ReportArchivationProgress;
          folderNode.ReportDeArchivationProgress += ReportDeArchivationProgress;
          var fileNode = new FileNode(string.Format(@"{0}\{1}", folderName, fileName), archiveSize);
          fileNode.ReportArchivationProgress += ReportArchivationProgress;
          fileNode.ReportDeArchivationProgress += ReportDeArchivationProgress;
          folderNode.AddChildNode(fileNode);
          fileNode.Load(sourcePath);
          folderNode.Serialize(destinationPath);
        }
        if (Directory.Exists(sourcePath))
        {
          var folderName = Path.GetFileName(sourcePath);
          var archiveSize = FolderSizeCalculator.GetFolderSize(sourcePath);
          var folderNode = new FolderNode(folderName, archiveSize);
          folderNode.ReportArchivationProgress += ReportArchivationProgress;
          folderNode.Load(sourcePath);
          folderNode.Serialize(destinationPath);
        }
      });
    }

    public Task DeArchive(string sourcePath, string destinationPath)
    {
      return Task.Factory.StartNew(() =>
      {
        var node = BinarySerializer.Deserialize<FolderNode>(sourcePath, new List<Type>() { typeof(Node), typeof(FileNode), typeof(FolderNode) });
        node.ReportArchivationProgress += ReportArchivationProgress;
        node.ReportDeArchivationProgress += ReportDeArchivationProgress;
        node.Save(destinationPath);
      });
    }
    #endregion
  }
}
