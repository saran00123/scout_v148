.class public Lcom/ta/a/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile b:Z = false


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/ta/a/d/h;->mContext:Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/ta/a/d/h;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 3

    .line 33
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 34
    iget-object v0, p0, Lcom/ta/a/d/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/a/e/f;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 37
    :cond_c
    sget-boolean v0, Lcom/ta/a/d/h;->b:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/ta/a/d/h;->b:Z

    const/4 v0, 0x0

    .line 43
    :try_start_14
    invoke-direct {p0}, Lcom/ta/a/d/h;->b()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1a

    .line 47
    :catch_17
    sput-boolean v0, Lcom/ta/a/d/h;->b:Z

    goto :goto_1e

    :catchall_1a
    move-exception v1

    sput-boolean v0, Lcom/ta/a/d/h;->b:Z

    throw v1

    :cond_1e
    :goto_1e
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "https://mpush-api.aliyun.com/v2.0/a/audid/req/"

    const/4 v1, 0x1

    .line 52
    invoke-static {v0, p1, v1}, Lcom/ta/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/a/d/a;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_b
    invoke-static {p1}, Lcom/ta/utdid2/device/f;->a(Lcom/ta/a/d/a;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .registers 5

    .line 61
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 63
    invoke-direct {p0}, Lcom/ta/a/d/h;->i()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 65
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "postData is empty"

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_16
    invoke-direct {p0, v0}, Lcom/ta/a/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, ""

    if-eqz v0, :cond_29

    .line 71
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "upload success"

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    .line 73
    :cond_29
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "upload fail"

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_32
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 4

    .line 78
    invoke-static {}, Lcom/ta/utdid2/device/a;->a()Lcom/ta/utdid2/device/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_10
    invoke-static {v0}, Lcom/ta/a/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/ta/a/e/h;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/ta/a/e/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_25
    invoke-static {v0}, Lcom/ta/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 26
    :try_start_0
    invoke-direct {p0}, Lcom/ta/a/d/h;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {v2, v0, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_d
    return-void
.end method
