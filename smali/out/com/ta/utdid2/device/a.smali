.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/ta/utdid2/device/a;

.field private static c:J


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/ta/utdid2/device/a;

    invoke-direct {v0}, Lcom/ta/utdid2/device/a;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/a;->a:Lcom/ta/utdid2/device/a;

    const-wide/16 v0, 0xbb8

    .line 24
    sput-wide v0, Lcom/ta/utdid2/device/a;->c:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/ta/utdid2/device/a;
    .registers 1

    .line 30
    sget-object v0, Lcom/ta/utdid2/device/a;->a:Lcom/ta/utdid2/device/a;

    return-object v0
.end method

.method static synthetic b()J
    .registers 2

    .line 19
    sget-wide v0, Lcom/ta/utdid2/device/a;->c:J

    return-wide v0
.end method

.method private h()V
    .registers 4

    .line 157
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 158
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 162
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/ta/a/e/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-void

    .line 168
    :cond_1b
    new-instance v1, Lcom/ta/utdid2/device/a$4;

    invoke-direct {v1, p0, v0}, Lcom/ta/utdid2/device/a$4;-><init>(Lcom/ta/utdid2/device/a;Landroid/content/Context;)V

    .line 189
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_28} :catch_29

    goto :goto_35

    :catch_29
    move-exception v0

    const/4 v1, 0x1

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, ""

    invoke-static {v0, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_35
    return-void
.end method

.method private q()Ljava/lang/String;
    .registers 7

    .line 65
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    return-object v0

    .line 70
    :cond_d
    invoke-static {}, Lcom/ta/a/d/e;->e()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "AppUtdid"

    if-eqz v2, :cond_31

    .line 72
    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "read utdid from V5AppFile"

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 73
    invoke-static {v2}, Lcom/ta/utdid2/device/c;->setType(I)V

    .line 75
    new-instance v2, Lcom/ta/utdid2/device/a$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/ta/utdid2/device/a$1;-><init>(Lcom/ta/utdid2/device/a;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    return-object v1

    .line 109
    :cond_31
    invoke-static {v0}, Lcom/ta/a/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 111
    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "read utdid from V5Settings"

    aput-object v2, v0, v3

    invoke-static {v5, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 112
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->setType(I)V

    .line 114
    new-instance v0, Lcom/ta/utdid2/device/a$2;

    invoke-direct {v0, p0, v1}, Lcom/ta/utdid2/device/a$2;-><init>(Lcom/ta/utdid2/device/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    return-object v1

    .line 137
    :cond_52
    invoke-static {}, Lcom/ta/a/d/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 139
    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "read utdid from V5Sdcard"

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 140
    invoke-static {v2}, Lcom/ta/utdid2/device/c;->setType(I)V

    .line 142
    new-instance v2, Lcom/ta/utdid2/device/a$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/ta/utdid2/device/a$3;-><init>(Lcom/ta/utdid2/device/a;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V

    return-object v1

    :cond_73
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method declared-synchronized getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 35
    iget-object p1, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_51

    monitor-exit p0

    return-object p1

    .line 39
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/ta/a/e/e;->c()V

    .line 40
    invoke-direct {p0}, Lcom/ta/utdid2/device/a;->q()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 44
    invoke-static {p1}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ta/utdid2/device/c;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 48
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/ta/utdid2/device/a;->h()V

    .line 51
    iget-object p1, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2f} :catch_3d
    .catchall {:try_start_d .. :try_end_2f} :catchall_3b

    .line 59
    :try_start_2f
    invoke-static {}, Lcom/ta/a/e/e;->d()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_51

    monitor-exit p0

    return-object p1

    :cond_34
    :try_start_34
    const-string p1, "ffffffffffffffffffffffff"
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_36} :catch_3d
    .catchall {:try_start_34 .. :try_end_36} :catchall_3b

    :try_start_36
    invoke-static {}, Lcom/ta/a/e/e;->d()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_51

    monitor-exit p0

    return-object p1

    :catchall_3b
    move-exception p1

    goto :goto_4d

    :catch_3d
    move-exception p1

    :try_start_3e
    const-string v0, "AppUtdid"

    const/4 v1, 0x0

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string p1, "ffffffffffffffffffffffff"
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3b

    .line 59
    :try_start_48
    invoke-static {}, Lcom/ta/a/e/e;->d()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_51

    monitor-exit p0

    return-object p1

    :goto_4d
    :try_start_4d
    invoke-static {}, Lcom/ta/a/e/e;->d()V

    throw p1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized r()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
