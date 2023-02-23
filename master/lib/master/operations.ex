defmodule Master.Operations do

  @moduledoc """
    This module defines all the unix operations that the client may request
    Eg. cmd operations like
     - cd, ls, mkdir, cp, mv, etc.

    Operations are divided into two categories
      - Most operations can be performed on the virtual directory hierarchy defined in the FileAccessTable
        Hence, a master node access is enough
      - Some operations will need accessing the worker nodes for file access
        This will demand a tcp connection to the worker nodes
  """

  @doc """
    mimics the UNIX command "ls"
  """
  def ls_operation(parent_folder_path) do
    Database.FileAccess.get_all_files_in_folder([folder_path: parent_folder_path])
  end


  @doc """
    mimics the UNIX command "touch"
  """
  def touch_operration(parent_folder_path, file_name) do
    Database.FileAccess.write_to_file_access_table(
      [folder_path: parent_folder_path, file_name: "b.txt", file_size: 0, type: "folder"]
    )
  end

  @doc """
    mimcs the UNIX command "mkdir"
  """
  def mkdir_operation(parent_folder_path, folder_name) do

  end


  @doc """
    mimics the UNIX command "cd"
  """
  def cd_operation(current_directory) do

  end

end
