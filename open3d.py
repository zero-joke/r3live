import open3d as o3d

if __name__ == "__main__":
    pcd = o3d.io.read_point_cloud("D:\\zjk\\projects\\cg\\3d_segmentation\\SoftGroup\\dataset\\pcd\\hku_campus_seq_01\\rgb_pt.pcd")
    print(pcd)
    o3d.visualization.draw(pcd)