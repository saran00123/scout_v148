.class public Lcom/pilotlab/rollereye/Utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final MIME_MapTable:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x43

    .line 85
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ".3gp"

    const-string v2, "video/3gpp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".apk"

    const-string v2, "application/vnd.android.package-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ".asf"

    const-string v2, "video/x-ms-asf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ".avi"

    const-string v2, "video/x-msvideo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "application/octet-stream"

    const-string v2, ".bin"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, ".bmp"

    const-string v3, "image/bmp"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "text/plain"

    const-string v3, ".c"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string v3, ".class"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string v3, ".conf"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string v3, ".cpp"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const-string v3, ".doc"

    const-string v4, "application/msword"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const-string v3, ".docx"

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-string v3, ".xls"

    const-string v4, "application/vnd.ms-excel"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-string v3, ".xlsx"

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const-string v3, ".exe"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, ".gif"

    const-string v3, "image/gif"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, ".gtar"

    const-string v3, "application/x-gtar"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, ".gz"

    const-string v3, "application/x-gzip"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, ".h"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "text/html"

    const-string v3, ".htm"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v0, v4

    const-string v3, ".html"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v0, v4

    const-string v3, ".jar"

    const-string v4, "application/java-archive"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v0, v4

    const-string v3, ".java"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v0, v4

    const-string v3, "image/jpeg"

    const-string v4, ".jpeg"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    aput-object v4, v0, v5

    const-string v4, ".jpg"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x18

    aput-object v3, v0, v4

    const-string v3, ".js"

    const-string v4, "application/x-javascript"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    aput-object v3, v0, v4

    const-string v3, ".log"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    aput-object v3, v0, v4

    const-string v3, ".m3u"

    const-string v4, "audio/x-mpegurl"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b

    aput-object v3, v0, v4

    const-string v3, "audio/mp4a-latm"

    const-string v4, ".m4a"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c

    aput-object v4, v0, v5

    const-string v4, ".m4b"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1d

    aput-object v4, v0, v5

    const-string v4, ".m4p"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    aput-object v3, v0, v4

    const-string v3, ".m4u"

    const-string v4, "video/vnd.mpegurl"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f

    aput-object v3, v0, v4

    const-string v3, ".m4v"

    const-string v4, "video/x-m4v"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    aput-object v3, v0, v4

    const-string v3, ".mov"

    const-string v4, "video/quicktime"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    aput-object v3, v0, v4

    const-string v3, "audio/x-mpeg"

    const-string v4, ".mp2"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    aput-object v4, v0, v5

    const-string v4, ".mp3"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x23

    aput-object v3, v0, v4

    const-string v3, "video/mp4"

    const-string v4, ".mp4"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    aput-object v4, v0, v5

    const-string v4, ".mpc"

    const-string v5, "application/vnd.mpohun.certificate"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25

    aput-object v4, v0, v5

    const-string v4, "video/mpeg"

    const-string v5, ".mpe"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x26

    aput-object v5, v0, v6

    const-string v5, ".mpeg"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x27

    aput-object v5, v0, v6

    const-string v5, ".mpg"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    aput-object v4, v0, v5

    const-string v4, ".mpg4"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x29

    aput-object v3, v0, v4

    const-string v3, ".mpga"

    const-string v4, "audio/mpeg"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2a

    aput-object v3, v0, v4

    const-string v3, ".msg"

    const-string v4, "application/vnd.ms-outlook"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b

    aput-object v3, v0, v4

    const-string v3, ".ogg"

    const-string v4, "audio/ogg"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    aput-object v3, v0, v4

    const-string v3, ".pdf"

    const-string v4, "application/pdf"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d

    aput-object v3, v0, v4

    const-string v3, ".png"

    const-string v4, "image/png"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    aput-object v3, v0, v4

    const-string v3, "application/vnd.ms-powerpoint"

    const-string v4, ".pps"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    aput-object v4, v0, v5

    const-string v4, ".ppt"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    aput-object v3, v0, v4

    const-string v3, ".pptx"

    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x31

    aput-object v3, v0, v4

    const-string v3, ".prop"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    aput-object v3, v0, v4

    const-string v3, ".rc"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x33

    aput-object v3, v0, v4

    const-string v3, ".rmvb"

    const-string v4, "audio/x-pn-realaudio"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x34

    aput-object v3, v0, v4

    const-string v3, ".rtf"

    const-string v4, "application/rtf"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x35

    aput-object v3, v0, v4

    const-string v3, ".sh"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x36

    aput-object v3, v0, v4

    const-string v3, ".tar"

    const-string v4, "application/x-tar"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x37

    aput-object v3, v0, v4

    const-string v3, ".tgz"

    const-string v4, "application/x-compressed"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x38

    aput-object v3, v0, v4

    const-string v3, ".txt"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x39

    aput-object v3, v0, v4

    const-string v3, ".wav"

    const-string v4, "audio/x-wav"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    aput-object v3, v0, v4

    const-string v3, ".wma"

    const-string v4, "audio/x-ms-wma"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3b

    aput-object v3, v0, v4

    const-string v3, ".wmv"

    const-string v4, "audio/x-ms-wmv"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3c

    aput-object v3, v0, v4

    const-string v3, ".wps"

    const-string v4, "application/vnd.ms-works"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3d

    aput-object v3, v0, v4

    const-string v3, ".xml"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    const-string v2, ".z"

    const-string v3, "application/x-compress"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    const-string v2, ".scout"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, ".zip"

    const-string v2, "application/x-zip-compressed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, ""

    const-string v2, "*/*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/Utils/FileUtil;->MIME_MapTable:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SaveImage(Ljava/lang/String;[B[B[BII)V
    .registers 15

    mul-int v0, p4, p5

    .line 658
    div-int/lit8 v1, v0, 0x2

    add-int v2, v0, v1

    new-array v4, v2, [B

    const/4 v2, 0x0

    .line 659
    invoke-static {p1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v2

    move v3, p1

    :goto_e
    if-ge p1, v1, :cond_24

    add-int v5, p1, v0

    add-int/lit8 v6, v5, 0x0

    .line 662
    aget-byte v7, p3, v3

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x1

    .line 663
    aget-byte v3, p2, v3

    aput-byte v3, v4, v5

    add-int/lit8 p1, p1, 0x2

    move v3, v6

    goto :goto_e

    .line 666
    :cond_24
    new-instance p1, Landroid/graphics/YuvImage;

    const/16 v5, 0x11

    const/4 v8, 0x0

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 668
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 671
    :try_start_34
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 673
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x64

    .line 674
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 675
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 677
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4e
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    .line 867
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_38

    .line 871
    :cond_14
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 872
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 p1, 0x400

    .line 873
    new-array p1, p1, [B

    :goto_23
    const/4 v3, -0x1

    .line 875
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_2e

    .line 876
    invoke-virtual {p0, p1, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_23

    .line 878
    :cond_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 879
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 880
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    return v2

    :cond_38
    :goto_38
    return v0

    :catch_39
    move-exception p0

    .line 883
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static createFile(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 771
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileInfo(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 772
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 773
    aget-object v0, v0, v2

    .line 775
    invoke-static {p0, v1, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->createOrRenameFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 777
    :try_start_e
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_16
    return-object p0
.end method

.method public static createOrRenameFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 834
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 835
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 836
    :goto_19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_48

    .line 837
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_48
    return-object v0
.end method

.method public static fileToMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "file to md5 failed"

    const/4 v1, 0x0

    .line 155
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_45
    .catchall {:try_start_3 .. :try_end_8} :catchall_36

    const/16 p0, 0x400

    .line 156
    :try_start_a
    new-array p0, p0, [B

    const-string v3, "MD5"

    .line 157
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_14
    :goto_14
    const/4 v6, -0x1

    if-eq v5, v6, :cond_21

    .line 160
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_14

    .line 162
    invoke-virtual {v3, p0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_14

    .line 165
    :cond_21
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 166
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/JCType;->byteToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_46
    .catchall {:try_start_a .. :try_end_29} :catchall_34

    .line 172
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v1

    .line 174
    sget-object v2, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    return-object p0

    :catchall_34
    move-exception p0

    goto :goto_38

    :catchall_36
    move-exception p0

    move-object v2, v1

    :goto_38
    if-eqz v2, :cond_44

    .line 172
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception v1

    .line 174
    sget-object v2, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_44
    :goto_44
    throw p0

    :catch_45
    move-object v2, v1

    :catch_46
    if-eqz v2, :cond_52

    .line 172
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    move-exception p0

    .line 174
    sget-object v2, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_52
    :goto_52
    return-object v1
.end method

.method private static forceGetFileUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 5

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_22

    .line 434
    :try_start_6
    const-class v0, Landroid/os/StrictMode;

    const-string v1, "disableDeathOnFileUriExposure"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 435
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception v0

    .line 437
    sget-object v1, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_22
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetJsonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 1105
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 1106
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_46
    .catchall {:try_start_1 .. :try_end_9} :catchall_41

    .line 1107
    :try_start_9
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_3e
    .catchall {:try_start_9 .. :try_end_e} :catchall_39

    const/16 v1, 0x1000

    .line 1108
    :try_start_10
    new-array v1, v1, [B

    .line 1110
    :goto_12
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x0

    .line 1111
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_12

    .line 1113
    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_37
    .catchall {:try_start_10 .. :try_end_27} :catchall_5e

    if-eqz p0, :cond_2f

    .line 1119
    :try_start_29
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2f

    :catch_2d
    move-exception p0

    goto :goto_33

    .line 1121
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_2d

    goto :goto_36

    .line 1123
    :goto_33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_36
    return-object v1

    :catch_37
    move-exception v1

    goto :goto_49

    :catchall_39
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5f

    :catch_3e
    move-exception v1

    move-object p1, v0

    goto :goto_49

    :catchall_41
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_5f

    :catch_46
    move-exception v1

    move-object p0, v0

    move-object p1, p0

    .line 1115
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5e

    if-eqz p0, :cond_54

    .line 1119
    :try_start_4e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_54

    :catch_52
    move-exception p0

    goto :goto_5a

    :cond_54
    :goto_54
    if-eqz p1, :cond_5d

    .line 1121
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_52

    goto :goto_5d

    .line 1123
    :goto_5a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5d
    :goto_5d
    return-object v0

    :catchall_5e
    move-exception v0

    :goto_5f
    if-eqz p0, :cond_67

    .line 1119
    :try_start_61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_67

    :catch_65
    move-exception p0

    goto :goto_6d

    :cond_67
    :goto_67
    if-eqz p1, :cond_70

    .line 1121
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6c} :catch_65

    goto :goto_70

    .line 1123
    :goto_6d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1124
    :cond_70
    :goto_70
    throw v0
.end method

.method private static getAudioContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 9

    .line 546
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "_data=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 552
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 553
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "content://media/external/audio/media"

    .line 554
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 558
    :cond_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    if-nez v1, :cond_62

    .line 561
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 562
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :cond_62
    return-object v1
.end method

.method public static getChooseFileResultPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 937
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 938
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 941
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_2d

    .line 942
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".scout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 943
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFPUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    .line 945
    :cond_28
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    .line 948
    :cond_2d
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "_data"

    .line 616
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 619
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_31

    if-eqz p0, :cond_2b

    .line 621
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 622
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_29

    if-eqz p0, :cond_28

    .line 626
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-object p1

    :catchall_29
    move-exception p1

    goto :goto_33

    :cond_2b
    if-eqz p0, :cond_30

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_30
    return-object v7

    :catchall_31
    move-exception p1

    move-object p0, v7

    :goto_33
    if-eqz p0, :cond_38

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_38
    throw p1
.end method

.method public static getFPUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 963
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 965
    const-class v2, Landroidx/core/content/FileProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 966
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 967
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_16

    .line 969
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_29
    if-ge v5, v3, :cond_16

    aget-object v6, v2, v5

    .line 970
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 971
    const-class v6, Landroidx/core/content/FileProvider;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_b4

    :try_start_3b
    const-string v7, "getPathStrategy"

    const/4 v8, 0x2

    .line 973
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 974
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 975
    new-array v7, v8, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 977
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Landroidx/core/content/FileProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "$PathStrategy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 978
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getFileForUri"

    .line 979
    new-array v9, v11, [Ljava/lang/Class;

    const-class v10, Landroid/net/Uri;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 980
    invoke-virtual {v7, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 981
    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 982
    instance-of v7, v6, Ljava/io/File;

    if-eqz v7, :cond_b0

    .line 983
    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_9c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_9c} :catch_ac
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_9c} :catch_a7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_9c} :catch_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_9c} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_9c} :catch_b4

    return-object p0

    :catch_9d
    move-exception v6

    .line 994
    :try_start_9e
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_b0

    :catch_a2
    move-exception v6

    .line 992
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_b0

    :catch_a7
    move-exception v6

    .line 990
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_b0

    :catch_ac
    move-exception v6

    .line 988
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b0} :catch_b4

    :cond_b0
    :goto_b0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_29

    :catch_b4
    move-exception p0

    .line 1002
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b8
    return-object v0
.end method

.method private static getFileContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 9

    .line 453
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_id"

    .line 454
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v5, v4

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 460
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 461
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 462
    invoke-static {p0, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    move-object v1, p0

    .line 464
    :cond_38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-object v1
.end method

.method public static getFileForUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    .line 633
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0x2f

    .line 634
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 635
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "root"

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    return-object p0

    .line 639
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "Can\'t decode paths to \'%s\', only for \'root\' paths."

    .line 640
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileInfo(Ljava/io/File;)[Ljava/lang/String;
    .registers 5

    .line 807
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 808
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const-string v0, ""

    goto :goto_1e

    .line 814
    :cond_11
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p0, v2

    :goto_1e
    const/4 v2, 0x2

    .line 817
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    const/4 p0, 0x1

    aput-object v0, v2, p0

    return-object v2
.end method

.method public static getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1c

    .line 846
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const/16 v0, 0x2e

    .line 847
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1c

    .line 848
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 v1, 0x0

    .line 849
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method public static getFileRealPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 354
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    const-string p1, "getFileRealPath current activity is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    if-nez p1, :cond_15

    .line 359
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    const-string p1, "getFileRealPath uri is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 363
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "file"

    if-lt v1, v2, :cond_cf

    .line 364
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 365
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5a

    .line 366
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 368
    aget-object p1, p0, v4

    const-string v1, "primary"

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 373
    :cond_5a
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 374
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content://downloads/public_downloads"

    .line 376
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 375
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 378
    invoke-static {p0, p1, v0, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 379
    :cond_7b
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 380
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 381
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 382
    aget-object v0, p1, v4

    const-string v1, "image"

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 386
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b2

    :cond_96
    const-string v1, "video"

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 388
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b2

    :cond_a1
    const-string v1, "audio"

    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 390
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_b2

    :cond_ac
    const-string v0, "external"

    .line 392
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 396
    :goto_b2
    new-array v1, v3, [Ljava/lang/String;

    aget-object p1, p1, v3

    aput-object p1, v1, v4

    const-string p1, "_id=?"

    .line 398
    invoke-static {p0, v0, p1, v1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_bf
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 401
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ce
    return-object v0

    .line 405
    :cond_cf
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_10f

    .line 409
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 410
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_fd
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_10f

    .line 414
    :cond_101
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10f

    .line 415
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_10f
    :goto_10f
    return-object v0
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 295
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    const-string p1, "getFileUri current activity is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    if-eqz p2, :cond_8d

    .line 299
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_8d

    :cond_15
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 304
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 305
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    const-string p1, "getFileUri miss WRITE_EXTERNAL_STORAGE permission."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 311
    :cond_25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_30

    .line 312
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_86

    .line 315
    :cond_30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "*/*"

    if-eqz v1, :cond_39

    move-object p1, v2

    :cond_39
    const/4 v1, -0x1

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_96

    goto :goto_6a

    :sswitch_45
    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/4 v1, 0x0

    goto :goto_6a

    :sswitch_4f
    const-string v2, "video/*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    move v1, v6

    goto :goto_6a

    :sswitch_59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    move v1, v4

    goto :goto_6a

    :sswitch_61
    const-string v2, "audio/*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    move v1, v5

    :cond_6a
    :goto_6a
    if-eqz v1, :cond_82

    if-eq v1, v6, :cond_7d

    if-eq v1, v5, :cond_78

    if-eq v1, v4, :cond_73

    goto :goto_86

    .line 330
    :cond_73
    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_86

    .line 327
    :cond_78
    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getAudioContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_86

    .line 324
    :cond_7d
    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getVideoContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_86

    .line 321
    :cond_82
    invoke-static {p0, p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_86
    if-nez v0, :cond_8c

    .line 338
    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->forceGetFileUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_8c
    return-object v0

    .line 300
    :cond_8d
    :goto_8d
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    const-string p1, "getFileUri file is null or not exists."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :sswitch_data_96
    .sparse-switch
        -0x2769fbcf -> :sswitch_61
        0xa385 -> :sswitch_59
        0x1afce796 -> :sswitch_4f
        0x71f5c476 -> :sswitch_45
    .end sparse-switch
.end method

.method private static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 9

    .line 478
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "_data=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 485
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 486
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "content://media/external/images/media"

    .line 487
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 491
    :cond_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    if-nez v1, :cond_62

    .line 495
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 496
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :cond_62
    return-object v1
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "*/*"

    if-gez v0, :cond_f

    return-object v1

    .line 74
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-ne p0, v0, :cond_20

    return-object v1

    :cond_20
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    .line 78
    :goto_23
    sget-object v3, Lcom/pilotlab/rollereye/Utils/FileUtil;->MIME_MapTable:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_3c

    .line 79
    aget-object v3, v3, v1

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 80
    sget-object v2, Lcom/pilotlab/rollereye/Utils/FileUtil;->MIME_MapTable:[[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3c
    return-object v2
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1033
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const/4 v3, 0x0

    if-eqz v0, :cond_a7

    .line 1035
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1037
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v4, ":"

    if-eqz v0, :cond_49

    .line 1038
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 1039
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1040
    aget-object p1, p0, v2

    const-string v0, "primary"

    .line 1042
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 1043
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1048
    :cond_49
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1049
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://downloads/public_downloads"

    .line 1050
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 1051
    invoke-static {p0, p1, v3, v3}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1055
    :cond_6a
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1056
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1058
    aget-object v0, p1, v2

    const-string v4, "image"

    .line 1061
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1062
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_9a

    :cond_85
    const-string v4, "video"

    .line 1063
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1064
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_9a

    :cond_90
    const-string v4, "audio"

    .line 1065
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1066
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1070
    :cond_9a
    :goto_9a
    new-array v0, v1, [Ljava/lang/String;

    aget-object p1, p1, v1

    aput-object p1, v0, v2

    const-string p1, "_id=?"

    .line 1072
    invoke-static {p0, v3, p1, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1078
    :cond_a7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1080
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->isHuaWeiProvider(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1081
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1084
    :cond_be
    invoke-static {p0, p1, v3, v3}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1087
    :cond_c3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d2

    .line 1088
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    :cond_d2
    return-object v3
.end method

.method public static getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const-string v0, "_data"

    .line 1016
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1018
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1019
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1020
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1021
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return-object p1
.end method

.method private static getVideoContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 9

    .line 512
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "_data=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 518
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 519
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "content://media/external/video/media"

    .line 520
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 524
    :cond_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    if-nez v1, :cond_62

    .line 528
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 529
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :cond_62
    return-object v1
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 582
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 574
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isHuaWeiProvider(Landroid/net/Uri;)Z
    .registers 2

    .line 598
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.huawei.hidisk.fileprovider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 590
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static readSDCard(Landroid/content/Context;)J
    .registers 10

    .line 182
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 184
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 185
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 187
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    .line 188
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    .line 189
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "block\u5927\u5c0f:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",block\u6570\u76ee:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v3, v1

    const-wide/16 v7, 0x400

    div-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "KB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object p0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",\u5269\u4f59\u7a7a\u95f4:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v5, v1

    div-long v1, v5, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_79
    const-wide/16 v5, 0x0

    :goto_7b
    return-wide v5
.end method

.method public static readSystem()J
    .registers 10

    .line 198
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 199
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 201
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 202
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 203
    sget-object v6, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "block\u5927\u5c0f:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",block\u6570\u76ee:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x400

    div-long/2addr v4, v8

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "KB"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v5, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",\u53ef\u7528\u5927\u5c0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v0, v2

    div-long v2, v0, v8

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static renameFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 792
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileInfo(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 794
    aget-object v0, v0, v1

    .line 795
    invoke-static {p0, p1, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->createOrRenameFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 797
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-object p1
.end method

.method public static saveCrashInfoFile(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7

    const-string v0, "\n"

    .line 692
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 694
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 696
    :try_start_c
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 698
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 701
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 702
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 706
    :cond_6e
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 707
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 708
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 709
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_7f
    if-eqz p0, :cond_89

    .line 711
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 712
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_7f

    .line 714
    :cond_89
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 715
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 716
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 717
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->writeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_9e} :catch_9f

    return-object p0

    :catch_9f
    move-exception p0

    .line 722
    sget-object v0, Lcom/pilotlab/rollereye/Utils/FileUtil;->TAG:Ljava/lang/String;

    const-string v1, "an error occured while writing file..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "an error occured while writing file...\r\n"

    .line 723
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->writeFile(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .registers 5

    if-eqz p1, :cond_76

    if-eqz p0, :cond_76

    if-nez p2, :cond_8

    goto/16 :goto_76

    :cond_8
    const/4 v0, 0x0

    .line 903
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_4b
    .catchall {:try_start_9 .. :try_end_11} :catchall_47

    if-nez p0, :cond_1e

    if-eqz p0, :cond_1d

    .line 918
    :try_start_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 924
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_1d
    return-void

    .line 908
    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_43
    .catchall {:try_start_1e .. :try_end_23} :catchall_40

    const/16 p2, 0x400

    .line 909
    :try_start_25
    new-array p2, p2, [B

    .line 910
    :goto_27
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x0

    .line 911
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_3e
    .catchall {:try_start_25 .. :try_end_32} :catchall_3c

    goto :goto_27

    :cond_33
    if-eqz p0, :cond_38

    .line 918
    :try_start_35
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 921
    :cond_38
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_56

    goto :goto_61

    :catchall_3c
    move-exception p2

    goto :goto_64

    :catch_3e
    move-exception p2

    goto :goto_45

    :catchall_40
    move-exception p2

    move-object p1, v0

    goto :goto_64

    :catch_43
    move-exception p2

    move-object p1, v0

    :goto_45
    move-object v0, p0

    goto :goto_4d

    :catchall_47
    move-exception p2

    move-object p0, v0

    move-object p1, p0

    goto :goto_64

    :catch_4b
    move-exception p2

    move-object p1, v0

    .line 914
    :goto_4d
    :try_start_4d
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_62

    if-eqz v0, :cond_58

    .line 918
    :try_start_52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_58

    :catch_56
    move-exception p0

    goto :goto_5e

    :cond_58
    :goto_58
    if-eqz p1, :cond_61

    .line 921
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5d} :catch_56

    goto :goto_61

    .line 924
    :goto_5e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_61
    :goto_61
    return-void

    :catchall_62
    move-exception p2

    move-object p0, v0

    :goto_64
    if-eqz p0, :cond_6c

    .line 918
    :try_start_66
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_6c

    :catch_6a
    move-exception p0

    goto :goto_72

    :cond_6c
    :goto_6c
    if-eqz p1, :cond_75

    .line 921
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_71} :catch_6a

    goto :goto_75

    .line 924
    :goto_72
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 925
    :cond_75
    :goto_75
    throw p2

    :cond_76
    :goto_76
    return-void
.end method

.method public static saveMediaGallay(Landroid/content/Context;Ljava/lang/String;)I
    .registers 11

    const/4 v0, -0x1

    .line 215
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 217
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 218
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "image/jpeg"

    .line 222
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_94

    const-string v4, "_display_name"

    const-string v5, "external"

    const-string v6, "external_primary"

    const/16 v7, 0x1c

    const/4 v8, 0x0

    if-eqz v3, :cond_3d

    .line 223
    :try_start_28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p1, v7, :cond_31

    .line 224
    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_35

    .line 227
    :cond_31
    invoke-static {v6}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 230
    :goto_35
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_3d
    const-string v3, "video/mp4"

    .line 231
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 232
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p1, v7, :cond_4e

    .line 233
    invoke-static {v5}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_52

    .line 236
    :cond_4e
    invoke-static {v6}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 239
    :goto_52
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_5a
    move-object p1, v8

    .line 241
    :goto_5b
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5f} :catch_94

    .line 245
    :try_start_5f
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 246
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    .line 247
    new-array v2, v2, [B

    .line 249
    :goto_6c
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_77

    .line 250
    invoke-virtual {v3, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6c

    .line 252
    :cond_77
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 253
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const-string v2, "is_pending"

    .line 255
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "date_expires"

    .line 256
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_8e} :catch_91
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_8e} :catch_94

    const/4 p0, 0x1

    move v0, p0

    goto :goto_94

    .line 260
    :catch_91
    :try_start_91
    invoke-virtual {p0, p1, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_94

    :catch_94
    :goto_94
    return v0
.end method

.method public static writeFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 731
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 741
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 743
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 747
    :try_start_76
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception v1

    .line 749
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 755
    :cond_7e
    :goto_7e
    :try_start_7e
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 757
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 758
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_91} :catch_97
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_91} :catch_92

    goto :goto_9b

    :catch_92
    move-exception p0

    .line 762
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    :catch_97
    move-exception p0

    .line 760
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_9b
    return-object v0
.end method
