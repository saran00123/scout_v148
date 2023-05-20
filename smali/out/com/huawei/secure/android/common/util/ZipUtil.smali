.class public Lcom/huawei/secure/android/common/util/ZipUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ZipUtil"

.field private static final b:I = 0x6400000

.field private static final c:I = 0x64

.field private static final d:I = 0x1000

.field private static final e:Ljava/lang/String; = "../"

.field private static final f:Ljava/lang/String; = "..\\"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;JZ)Ljava/util/List;
    .registers 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "JZ)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ZipUtil"

    const/4 v3, 0x0

    if-eqz v0, :cond_130

    if-nez v1, :cond_d

    goto/16 :goto_130

    :cond_d
    const/4 v4, 0x1

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 4
    :try_start_14
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_105
    .catchall {:try_start_14 .. :try_end_19} :catchall_103

    .line 5
    :try_start_19
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    move v8, v6

    .line 6
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_100
    .catchall {:try_start_19 .. :try_end_22} :catchall_fd

    if-eqz v9, :cond_f4

    .line 9
    :try_start_24
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2a} :catch_ed
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_100
    .catchall {:try_start_24 .. :try_end_2a} :catchall_fd

    .line 14
    :try_start_2a
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_35

    goto :goto_1e

    .line 19
    :cond_35
    sget-object v11, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v10, v11}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-static {v10}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zipPath is a invalid path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/huawei/secure/android/common/util/ZipUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto/16 :goto_f4

    :cond_5c
    const-string v11, "\\\\"

    const-string v12, "/"

    .line 27
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 28
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p4, :cond_7a

    .line 29
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 30
    invoke-static {v11}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/io/File;)V

    .line 32
    :cond_7a
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_90

    .line 34
    invoke-static {v11}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/io/File;)Z

    move-result v9
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_87} :catch_100
    .catchall {:try_start_2a .. :try_end_87} :catchall_fd

    if-nez v9, :cond_1e

    .line 73
    invoke-static {v7}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    .line 75
    invoke-static {v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/util/List;)Z

    return-object v3

    .line 76
    :cond_90
    :try_start_90
    invoke-static {v11}, Lcom/huawei/secure/android/common/util/ZipUtil;->b(Ljava/io/File;)Z

    move-result v10
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_94} :catch_100
    .catchall {:try_start_90 .. :try_end_94} :catchall_fd

    if-nez v10, :cond_9d

    .line 110
    invoke-static {v7}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/util/List;)Z

    return-object v3

    .line 113
    :cond_9d
    :try_start_9d
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_e0

    .line 114
    :try_start_a6
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_dd

    .line 115
    :try_start_ab
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_d9

    const/16 v12, 0x400

    .line 116
    :try_start_b2
    new-array v12, v12, [B

    .line 118
    :goto_b4
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_cc

    add-int/2addr v8, v13

    int-to-long v14, v8

    cmp-long v14, v14, p2

    if-lez v14, :cond_c8

    const-string v12, "unzipFileNew: over than top size"

    .line 121
    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_cc

    .line 125
    :cond_c8
    invoke-virtual {v11, v12, v6, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_cb
    .catchall {:try_start_b2 .. :try_end_cb} :catchall_d7

    goto :goto_b4

    .line 128
    :cond_cc
    :goto_cc
    :try_start_cc
    invoke-static {v10}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/InputStream;)V

    .line 129
    invoke-static {v11}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    .line 130
    invoke-static {v9}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    goto/16 :goto_1e

    :catchall_d7
    move-exception v0

    goto :goto_db

    :catchall_d9
    move-exception v0

    move-object v11, v3

    :goto_db
    move-object v3, v9

    goto :goto_e3

    :catchall_dd
    move-exception v0

    move-object v11, v3

    goto :goto_e3

    :catchall_e0
    move-exception v0

    move-object v10, v3

    move-object v11, v10

    .line 131
    :goto_e3
    invoke-static {v10}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/InputStream;)V

    .line 132
    invoke-static {v11}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    .line 133
    invoke-static {v3}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    .line 134
    throw v0

    :catch_ed
    const-string v9, "entries.nextElement IllegalArgumentException"

    .line 135
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_f2} :catch_100
    .catchall {:try_start_cc .. :try_end_f2} :catchall_fd

    goto/16 :goto_1e

    .line 197
    :cond_f4
    :goto_f4
    invoke-static {v7}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    if-nez v4, :cond_124

    .line 199
    invoke-static {v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/util/List;)Z

    goto :goto_124

    :catchall_fd
    move-exception v0

    move-object v3, v7

    goto :goto_127

    :catch_100
    move-exception v0

    move-object v3, v7

    goto :goto_106

    :catchall_103
    move-exception v0

    goto :goto_127

    :catch_105
    move-exception v0

    .line 200
    :goto_106
    :try_start_106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unzip new IOException : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_106 .. :try_end_11e} :catchall_125

    .line 202
    invoke-static {v3}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    .line 204
    invoke-static {v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/util/List;)Z

    :cond_124
    :goto_124
    return-object v5

    :catchall_125
    move-exception v0

    move v4, v6

    .line 205
    :goto_127
    invoke-static {v3}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    if-nez v4, :cond_12f

    .line 207
    invoke-static {v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/util/List;)Z

    .line 209
    :cond_12f
    throw v0

    :cond_130
    :goto_130
    return-object v3
.end method

.method private static a(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/util/zip/ZipInputStream;Ljava/io/FileOutputStream;)V
    .registers 4

    .line 269
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/InputStream;)V

    .line 270
    invoke-static {p1}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    .line 271
    invoke-static {p2}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/InputStream;)V

    .line 272
    invoke-static {p3}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 2

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 212
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_1c

    :cond_d
    const-string p0, "ZipUtil"

    const-string v0, "IllegalArgumentException--path is not a standard path"

    .line 213
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "path is not a standard path"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private static a(Ljava/lang/String;JI)Z
    .registers 15

    const-string v0, "close zipFile IOException "

    const-string v1, "ZipUtil"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 216
    :try_start_6
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_52
    .catchall {:try_start_6 .. :try_end_b} :catchall_50

    .line 217
    :try_start_b
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const-wide/16 v5, 0x0

    move v3, v2

    .line 220
    :cond_12
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_45

    .line 221
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 222
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    add-long/2addr v5, v9

    add-int/2addr v3, v8

    .line 225
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3f

    if-ge v3, p3, :cond_3f

    cmp-long v8, v5, p1

    if-gtz v8, :cond_3f

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_12

    :cond_3f
    const-string p0, "File name is invalid or too many files or too big"

    .line 226
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_44} :catch_4d
    .catchall {:try_start_b .. :try_end_44} :catchall_4a

    goto :goto_46

    :cond_45
    move v2, v8

    .line 237
    :goto_46
    :try_start_46
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_71

    goto :goto_74

    :catchall_4a
    move-exception p0

    move-object v3, v4

    goto :goto_75

    :catch_4d
    move-exception p0

    move-object v3, v4

    goto :goto_53

    :catchall_50
    move-exception p0

    goto :goto_75

    :catch_52
    move-exception p0

    .line 240
    :goto_53
    :try_start_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not a valid zip file, IOException : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_50

    if-eqz v3, :cond_74

    .line 244
    :try_start_6d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_74

    .line 239
    :catch_71
    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    :goto_74
    return v2

    :goto_75
    if-eqz v3, :cond_7e

    .line 244
    :try_start_77
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7e

    .line 246
    :catch_7b
    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_7e
    :goto_7e
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JI)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/util/SecurityCommonException;
        }
    .end annotation

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ZipUtil"

    if-nez v0, :cond_38

    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_38

    .line 254
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p1}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_32

    .line 258
    :cond_1d
    invoke-static {p0, p2, p3, p4}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/lang/String;JI)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const-string p0, "zip file contains valid chars or too many files"

    .line 259
    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance p0, Lcom/huawei/secure/android/common/util/SecurityCommonException;

    const-string p1, "unsecure zipfile!"

    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/util/SecurityCommonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    const-string p0, "target directory is not valid"

    .line 261
    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_38
    :goto_38
    const-string p0, "zip file is not valid"

    .line 262
    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static a(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 263
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 264
    invoke-static {v0}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16

    goto :goto_4

    :cond_14
    const/4 p0, 0x1

    return p0

    :catch_16
    move-exception p0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unzip fail delete file failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZipUtil"

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 11
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 4
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 8
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    const-string p0, "ZipUtil"

    const-string v1, "createOrExistsFile IOException "

    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method private static c(Ljava/io/File;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 2
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "ZipUtil"

    const-string v0, "delete file error"

    .line 3
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 4
    :cond_7
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    goto :goto_17

    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method private static d(Ljava/io/File;)V
    .registers 2

    if-eqz p0, :cond_16

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 9
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "ZipUtil"

    const-string v0, "mkdirs error , files exists or IOException."

    .line 10
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private static e(Ljava/io/File;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->c(Ljava/io/File;)V

    return-void

    .line 5
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 7
    array-length v1, v0

    if-nez v1, :cond_1d

    goto :goto_2d

    .line 11
    :cond_1d
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 12
    invoke-static {v3}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 14
    :cond_29
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->c(Ljava/io/File;)V

    goto :goto_30

    .line 15
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->c(Ljava/io/File;)V

    :cond_30
    :goto_30
    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 3

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const-string p0, "ZipUtil"

    const-string v0, "isContainInvalidStr: name is null"

    .line 17
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const-string v0, "../"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "..\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, ".\\.\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "%00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :cond_41
    :goto_41
    return v1
.end method

.method public static unZip(Ljava/lang/String;Ljava/lang/String;JIZ)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/util/SecurityCommonException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "ZipUtil"

    .line 2
    invoke-static/range {p0 .. p4}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    .line 5
    :cond_c
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_2f

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    const/4 v2, 0x1

    const/16 v4, 0x1000

    .line 10
    new-array v5, v4, [B

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 18
    :try_start_3a
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v9, p0

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_12d
    .catchall {:try_start_3a .. :try_end_41} :catchall_127

    .line 19
    :try_start_41
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4b} :catch_121
    .catchall {:try_start_41 .. :try_end_4b} :catchall_11d

    move v10, v2

    move v11, v3

    move-object v2, v7

    .line 21
    :goto_4e
    :try_start_4e
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    if-eqz v12, :cond_10c

    .line 22
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\\\"

    const-string v15, "/"

    .line 23
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 24
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v15, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v13, v15}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v13

    .line 27
    invoke-static {v13}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8c

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zipPath is a invalid path: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/huawei/secure/android/common/util/ZipUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v3

    goto/16 :goto_10c

    :cond_8c
    if-eqz p5, :cond_9d

    .line 32
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_9d

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 33
    invoke-static {v14}, Lcom/huawei/secure/android/common/util/ZipUtil;->e(Ljava/io/File;)V

    .line 35
    :cond_9d
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 36
    invoke-static {v14}, Lcom/huawei/secure/android/common/util/ZipUtil;->d(Ljava/io/File;)V

    .line 37
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 39
    :cond_aa
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_b9

    .line 40
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_b9

    .line 41
    invoke-static {v12}, Lcom/huawei/secure/android/common/util/ZipUtil;->d(Ljava/io/File;)V

    .line 43
    :cond_b9
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_be} :catch_119
    .catchall {:try_start_4e .. :try_end_be} :catchall_f8

    .line 44
    :try_start_be
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c3} :catch_10a
    .catchall {:try_start_be .. :try_end_c3} :catchall_108

    .line 46
    :goto_c3
    :try_start_c3
    invoke-virtual {v9, v5, v3, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v7
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c7} :catch_104
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_101

    const/4 v13, -0x1

    if-eq v7, v13, :cond_e3

    add-int/2addr v11, v7

    int-to-long v3, v11

    cmp-long v3, v3, p2

    if-lez v3, :cond_dc

    :try_start_d0
    const-string v3, "unzip  over than top size"

    .line 49
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d5} :catch_d8
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_101

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_e3

    :catch_d8
    move-exception v0

    move-object v7, v12

    const/4 v3, 0x0

    goto :goto_106

    :cond_dc
    const/4 v3, 0x0

    .line 53
    :try_start_dd
    invoke-virtual {v2, v5, v3, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    const/16 v4, 0x1000

    goto :goto_c3

    .line 55
    :cond_e3
    :goto_e3
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 57
    invoke-static {v2}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V

    .line 58
    invoke-static {v12}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/OutputStream;)V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_ef} :catch_104
    .catchall {:try_start_dd .. :try_end_ef} :catchall_101

    move-object v7, v2

    move-object v2, v12

    .line 60
    :goto_f1
    :try_start_f1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_fa
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f8

    const/16 v4, 0x1000

    goto/16 :goto_4e

    :catchall_f8
    move-exception v0

    goto :goto_116

    :catch_fa
    move-exception v0

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_106

    :catchall_101
    move-exception v0

    goto/16 :goto_155

    :catch_104
    move-exception v0

    move-object v7, v12

    :goto_106
    move-object v12, v7

    goto :goto_125

    :catchall_108
    move-exception v0

    goto :goto_117

    :catch_10a
    move-exception v0

    goto :goto_11b

    .line 62
    :cond_10c
    :goto_10c
    :try_start_10c
    invoke-static {v9}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/InputStream;)V

    .line 63
    invoke-static {v8}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/InputStream;)V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_112} :catch_119
    .catchall {:try_start_10c .. :try_end_112} :catchall_f8

    move-object v12, v2

    move-object v2, v7

    move-object v7, v8

    goto :goto_14a

    :goto_116
    move-object v12, v2

    :goto_117
    move-object v2, v7

    goto :goto_155

    :catch_119
    move-exception v0

    move-object v12, v2

    :goto_11b
    move-object v2, v7

    goto :goto_125

    :catchall_11d
    move-exception v0

    move-object v2, v7

    move-object v9, v2

    goto :goto_12b

    :catch_121
    move-exception v0

    move-object v2, v7

    move-object v9, v2

    move-object v12, v9

    :goto_125
    move-object v7, v8

    goto :goto_131

    :catchall_127
    move-exception v0

    move-object v2, v7

    move-object v8, v2

    move-object v9, v8

    :goto_12b
    move-object v12, v9

    goto :goto_155

    :catch_12d
    move-exception v0

    move-object v2, v7

    move-object v9, v2

    move-object v12, v9

    .line 66
    :goto_131
    :try_start_131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unzip IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_131 .. :try_end_149} :catchall_153

    move v10, v3

    .line 68
    :goto_14a
    invoke-static {v7, v2, v9, v12}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/util/zip/ZipInputStream;Ljava/io/FileOutputStream;)V

    if-nez v10, :cond_152

    .line 71
    invoke-static {v6}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/util/List;)Z

    :cond_152
    return v10

    :catchall_153
    move-exception v0

    move-object v8, v7

    .line 72
    :goto_155
    invoke-static {v8, v2, v9, v12}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/util/zip/ZipInputStream;Ljava/io/FileOutputStream;)V

    .line 73
    throw v0
.end method

.method public static unZip(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/util/SecurityCommonException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/32 v2, 0x6400000

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->unZip(Ljava/lang/String;Ljava/lang/String;JIZ)Z

    move-result p0

    return p0
.end method

.method public static unZipNew(Ljava/lang/String;Ljava/lang/String;JIZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIZ)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/util/SecurityCommonException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_8
    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p4, v0, :cond_2c

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p4, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_2c
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/ZipUtil;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/huawei/secure/android/common/util/ZipUtil;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p5}, Lcom/huawei/secure/android/common/util/ZipUtil;->a(Ljava/io/File;Ljava/io/File;JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unZipNew(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/secure/android/common/util/SecurityCommonException;
        }
    .end annotation

    const-wide/32 v2, 0x6400000

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/huawei/secure/android/common/util/ZipUtil;->unZipNew(Ljava/lang/String;Ljava/lang/String;JIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
