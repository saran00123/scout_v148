.class public Lorg/android/spdy/SoInstallMgrSdk;
.super Ljava/lang/Object;
.source "SoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final EventID_SO_INIT:I = 0x5229

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final X86:Ljava/lang/String; = "x86"

.field static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .registers 2

    .line 209
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    const-string v1, "CPU_ABI"

    invoke-static {v0, v1}, Lorg/android/spdy/SoInstallMgrSdk;->_getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    const-string v0, "armeabi"

    .line 213
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 201
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    const-string p0, "Unknown"

    return-object p0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    :try_start_2
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    if-nez p2, :cond_12

    .line 276
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_39

    .line 278
    :cond_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x2

    .line 279
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v4, v0

    .line 280
    const-class v5, Ljava/lang/Runtime;

    const-string v6, "load"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 282
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_45
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_39} :catch_40
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_39} :catch_3b

    :cond_39
    :goto_39
    move v1, v0

    goto :goto_49

    :catch_3b
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_49

    :catch_40
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_49

    :catch_45
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    return v1
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 221
    sget-object v0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    const-string p0, ""

    return-object p0

    .line 225
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 58
    sput-object p0, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static initSo(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method public static initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 86
    :try_start_4
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_3b

    .line 88
    :cond_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x2

    .line 89
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v4, v0

    .line 90
    const-class v5, Ljava/lang/Runtime;

    const-string v6, "loadLibrary"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_36
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_2b} :catch_31
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_3b

    :catch_2c
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_3a

    :catch_31
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    move v0, v1

    :goto_3b
    if-nez v0, :cond_81

    .line 126
    :try_start_3d
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 128
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_4a

    return v2

    .line 133
    :cond_4a
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 140
    :cond_4d
    invoke-static {}, Lorg/android/spdy/SoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mips"

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string v3, "x86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5f} :catch_7c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3d .. :try_end_5f} :catch_77
    .catch Ljava/lang/Error; {:try_start_3d .. :try_end_5f} :catch_72

    if-eqz v2, :cond_62

    goto :goto_81

    .line 151
    :cond_62
    :try_start_62
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result p0
    :try_end_66
    .catch Ljava/util/zip/ZipException; {:try_start_62 .. :try_end_66} :catch_6d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_68
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_7c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_62 .. :try_end_66} :catch_77
    .catch Ljava/lang/Error; {:try_start_62 .. :try_end_66} :catch_72

    move v1, p0

    goto :goto_82

    :catch_68
    move-exception p0

    .line 160
    :try_start_69
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    :catch_6d
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_7c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_69 .. :try_end_71} :catch_77
    .catch Ljava/lang/Error; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_81

    :catch_72
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_82

    :catch_77
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_82

    :catch_7c
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82

    :cond_81
    :goto_81
    move v1, v0

    :goto_82
    return v1
.end method

.method static isExist(Ljava/lang/String;I)Z
    .registers 2

    .line 254
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 255
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .registers 2

    .line 240
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 241
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/armeabi/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_17
    const-string v3, ""

    .line 323
    sget-object v4, Lorg/android/spdy/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1e

    return v2

    .line 330
    :cond_1e
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 333
    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 339
    :cond_26
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 343
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 344
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".."

    .line 345
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f6

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f6

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_59

    goto/16 :goto_f6

    .line 348
    :cond_59
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_61} :catch_f7

    if-eqz v7, :cond_2f

    const/4 v0, 0x0

    .line 358
    :try_start_64
    invoke-static {p0, p1}, Lorg/android/spdy/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_d1

    .line 362
    :try_start_6b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "bk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_8b
    .catchall {:try_start_6b .. :try_end_8b} :catchall_ce

    .line 364
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/16 v4, 0x400

    .line 366
    new-array v4, v4, [B

    move v6, v2

    .line 369
    :goto_94
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_a3

    .line 371
    invoke-static {v4, v2, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_cc

    add-int/2addr v6, v7

    goto :goto_94

    :cond_a3
    if-eqz v3, :cond_ad

    .line 383
    :try_start_a5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_f7

    goto :goto_ad

    :catch_a9
    move-exception v3

    .line 386
    :try_start_aa
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_f7

    :cond_ad
    :goto_ad
    if-eqz v0, :cond_b7

    .line 392
    :try_start_af
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_f7

    goto :goto_b7

    :catch_b3
    move-exception v0

    .line 394
    :try_start_b4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_f7

    :cond_b7
    :goto_b7
    if-eqz v1, :cond_c1

    .line 399
    :try_start_b9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bd
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_f7

    goto :goto_c1

    :catch_bd
    move-exception v0

    .line 401
    :try_start_be
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :cond_c1
    :goto_c1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    if-lez v6, :cond_cb

    .line 413
    invoke-static {p0, p1, p2}, Lorg/android/spdy/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result p0
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_ca} :catch_f7

    return p0

    :cond_cb
    return v2

    :catchall_cc
    move-exception p0

    goto :goto_d4

    :catchall_ce
    move-exception p0

    move-object v1, v0

    goto :goto_d4

    :catchall_d1
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    :goto_d4
    if-eqz v3, :cond_de

    .line 383
    :try_start_d6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_da
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_f7

    goto :goto_de

    :catch_da
    move-exception p1

    .line 386
    :try_start_db
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_f7

    :cond_de
    :goto_de
    if-eqz v0, :cond_e8

    .line 392
    :try_start_e0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e4
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_f7

    goto :goto_e8

    :catch_e4
    move-exception p1

    .line 394
    :try_start_e5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_f7

    :cond_e8
    :goto_e8
    if-eqz v1, :cond_f2

    .line 399
    :try_start_ea
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_ee
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_f7

    goto :goto_f2

    :catch_ee
    move-exception p1

    .line 401
    :try_start_ef
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :cond_f2
    :goto_f2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 407
    throw p0
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f6} :catch_f7

    :cond_f6
    :goto_f6
    return v2

    :catch_f7
    move-exception p0

    .line 423
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_fb
    return v2
.end method
