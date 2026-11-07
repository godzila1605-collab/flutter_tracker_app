class Run {
  //ตัวแปรล้อกับ column ในตาราง
  String? id;
  String? runWhere;
  String? runPerson;
  int? runDistance;
  String? runImageUrl;
  String? created_at;

  //constructor
  Run({
    this.id,
    this.runWhere,
    this.runPerson,
    this.runDistance,
    this.runImageUrl,
    this.created_at,
  });

  //แปลงข้อมูล จาก mobile เป็น json เพื่อส่งไป supabase
  Map<String, dynamic> toJson() => {
        "id": id,
        "runWhere": runWhere,
        "runPerson": runPerson,
        "runDistance": runDistance,
        "runImageUrl": runImageUrl,
        "created_at": created_at,
      };

  //แปลงข้อมูล จาก json  ใน supabase เป็น object ใน mobile
  factory Run.fromJson(Map<String, dynamic> json) => Run(
        id: json["id"],
        runWhere: json["runWhere"],
        runPerson: json["runPerson"],
        runDistance: json["runDistance"],
        runImageUrl: json["runImageUrl"],
        created_at: json["created_at"],
      );
}
