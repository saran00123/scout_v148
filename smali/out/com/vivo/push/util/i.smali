.class public final Lcom/vivo/push/util/i;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final a:Z

.field public static final b:Ljava/lang/String;

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "ro.vivo.product.overseas"

    const-string v1, "no"

    .line 1428
    invoke-static {v0, v1}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    sput-boolean v0, Lcom/vivo/push/util/i;->a:Z

    .line 1438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "N"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1f

    const-string v0, "ro.product.country.region"

    .line 1439
    invoke-static {v0, v1}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_1f
    const-string v0, "ro.product.customize.bbk"

    .line 1441
    invoke-static {v0, v1}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_25
    sput-object v0, Lcom/vivo/push/util/i;->b:Ljava/lang/String;

    .line 2089
    sget-object v0, Lcom/vivo/push/util/i;->b:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 25
    sput-boolean v0, Lcom/vivo/push/util/i;->c:Z

    .line 2093
    sget-object v0, Lcom/vivo/push/util/i;->b:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    sput-boolean v0, Lcom/vivo/push/util/i;->d:Z

    const-string v0, "rom_1.0"

    .line 29
    invoke-static {v0}, Lcom/vivo/push/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/push/util/i;->e:Z

    const-string v0, "rom_2.0"

    .line 31
    invoke-static {v0}, Lcom/vivo/push/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/push/util/i;->f:Z

    const-string v0, "rom_2.5"

    .line 33
    invoke-static {v0}, Lcom/vivo/push/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/push/util/i;->g:Z

    const-string v0, "rom_3.0"

    .line 35
    invoke-static {v0}, Lcom/vivo/push/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/push/util/i;->h:Z

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/vivo/push/util/i;->j:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/vivo/push/util/i;->k:Ljava/lang/String;

    const-string v0, ""

    .line 43
    sput-object v0, Lcom/vivo/push/util/i;->l:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/vivo/push/util/i;->m:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/vivo/push/util/i;

    monitor-enter v0

    .line 242
    :try_start_3
    sget-object v1, Lcom/vivo/push/util/i;->j:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_5a

    sget-object v1, Lcom/vivo/push/util/i;->k:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_97

    if-nez v1, :cond_5a

    :try_start_c
    const-string v1, "android.os.SystemProperties"

    .line 244
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x2

    .line 245
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 246
    sput-object v1, Lcom/vivo/push/util/i;->i:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 247
    sget-object v1, Lcom/vivo/push/util/i;->i:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "ro.vivo.rom"

    aput-object v5, v3, v7

    const-string v5, "@><@"

    aput-object v5, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/vivo/push/util/i;->j:Ljava/lang/String;

    .line 248
    sget-object v1, Lcom/vivo/push/util/i;->i:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "ro.vivo.rom.version"

    aput-object v4, v3, v7

    const-string v4, "@><@"

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/vivo/push/util/i;->k:Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_52} :catch_53
    .catchall {:try_start_c .. :try_end_52} :catchall_97

    goto :goto_5a

    :catch_53
    :try_start_53
    const-string v1, "Device"

    const-string v3, "getRomCode error"

    .line 250
    invoke-static {v1, v3}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    const-string v1, "Device"

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sRomProperty1 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vivo/push/util/i;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ; sRomProperty2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vivo/push/util/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v1, Lcom/vivo/push/util/i;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/push/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_83
    .catchall {:try_start_53 .. :try_end_83} :catchall_97

    if-nez v3, :cond_87

    .line 256
    monitor-exit v0

    return-object v1

    .line 257
    :cond_87
    :try_start_87
    sget-object v1, Lcom/vivo/push/util/i;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/push/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_97

    if-nez v3, :cond_95

    .line 258
    monitor-exit v0

    return-object v1

    .line 260
    :cond_95
    monitor-exit v0

    return-object v2

    :catchall_97
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x2

    const-string v2, "rom_([\\d]*).?([\\d]*)"

    .line 270
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 271
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string p0, "0"

    goto :goto_3c

    :cond_33
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_3c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_44
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 76
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    :goto_25
    if-eqz p0, :cond_2d

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_2d
    move-object p0, p1

    :cond_2e
    return-object p0
.end method

.method public static b()Z
    .registers 4

    .line 399
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Device"

    if-eqz v0, :cond_11

    const-string v0, "Build.MANUFACTURER is null"

    .line 400
    invoke-static {v2, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 403
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Build.MANUFACTURER is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bbk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    const/4 v0, 0x1

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    const-string v0, ""

    const-string v1, "ro.vivo.rom"

    .line 294
    invoke-static {v1, v0}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.vivo.rom.version"

    .line 295
    invoke-static {v2, v0}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ro.vivo.rom = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; ro.vivo.rom.version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device"

    invoke-static {v3, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_31

    .line 297
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    :cond_31
    if-eqz v0, :cond_3b

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3b

    :cond_39
    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method
