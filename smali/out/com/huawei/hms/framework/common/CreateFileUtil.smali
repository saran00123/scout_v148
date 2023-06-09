.class public Lcom/huawei/hms/framework/common/CreateFileUtil;
.super Ljava/lang/Object;
.source "CreateFileUtil.java"


# static fields
.field private static final EXTERNAL_FILE_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageFile"

.field private static final EXTERNAL_INPUTSTREAM_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageFileInputStream"

.field private static final EXTERNAL_OUTPUTSTREAM_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageFileOutputStream"

.field private static final RANDOM_ACCESS_FILE_NAME:Ljava/lang/String; = "com.huawei.libcore.io.ExternalStorageRandomAccessFile"

.field private static final TAG:Ljava/lang/String; = "CreateFileUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSecure(Ljava/io/File;)V
    .registers 2

    if-eqz p0, :cond_15

    .line 154
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "CreateFileUtil"

    const-string v0, "deleteSecure exception"

    .line 155
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public static deleteSecure(Ljava/lang/String;)V
    .registers 2

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 166
    invoke-static {p0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->deleteSecure(Ljava/io/File;)V

    :cond_d
    return-void
.end method

.method public static getCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 53
    :cond_5
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ContextCompat;->getProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "CreateFileUtil"

    .line 82
    :try_start_2
    invoke-static {p0}, Lcom/huawei/hms/framework/common/CreateFileUtil;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_19
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_1f

    :catch_b
    move-exception v1

    const-string v2, "the canonicalPath has other Exception"

    .line 88
    invoke-static {v0, v2, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_12
    move-exception v1

    const-string v2, "the canonicalPath has securityException"

    .line 86
    invoke-static {v0, v2, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_19
    move-exception v1

    const-string v2, "the canonicalPath has IOException"

    .line 84
    invoke-static {v0, v2, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-object p0
.end method

.method public static isPVersion()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    return v0
.end method

.method public static newFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "com.huawei.libcore.io.ExternalStorageFile"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 67
    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageFile;

    invoke-direct {v0, p0}, Lcom/huawei/libcore/io/ExternalStorageFile;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_1c

    .line 104
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.huawei.libcore.io.ExternalStorageFileInputStream"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 105
    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageFileInputStream;

    invoke-direct {v0, p0}, Lcom/huawei/libcore/io/ExternalStorageFileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 107
    :cond_16
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const-string p0, "CreateFileUtil"

    const-string v0, "newFileInputStream  file is null"

    .line 101
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "file is null"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_1c

    .line 122
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.huawei.libcore.io.ExternalStorageFileOutputStream"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 123
    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageFileOutputStream;

    invoke-direct {v0, p0}, Lcom/huawei/libcore/io/ExternalStorageFileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 125
    :cond_16
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_1c
    const-string p0, "CreateFileUtil"

    const-string v0, "newFileOutputStream  file is null"

    .line 119
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "file is null"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newRandomAccessFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_1c

    .line 141
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.huawei.libcore.io.ExternalStorageRandomAccessFile"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 142
    new-instance v0, Lcom/huawei/libcore/io/ExternalStorageRandomAccessFile;

    invoke-direct {v0, p0, p1}, Lcom/huawei/libcore/io/ExternalStorageRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 144
    :cond_16
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const-string p0, "CreateFileUtil"

    const-string p1, "newFileOutputStream  file is null"

    .line 138
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "file is null"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
