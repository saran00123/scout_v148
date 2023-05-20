.class public Lcom/shuyu/gsyvideoplayer/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "GSYVideo"

.field public static final NAME_TEST:Ljava/lang/String; = "GSYVideoTest"

.field private static final SD_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->SD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFiles(Ljava/io/File;)V
    .registers 5

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 51
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 54
    :try_start_18
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    return-void
.end method

.method public static getAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    sget-object v1, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath()Ljava/lang/String;
    .registers 3

    const-string v0, "GSYVideo"

    .line 31
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->getAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_14
    return-object v0
.end method

.method public static getTestPath()Ljava/lang/String;
    .registers 3

    const-string v0, "GSYVideoTest"

    .line 40
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->getAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_14
    return-object v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_16

    .line 67
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_16
    :goto_16
    return-void
.end method
