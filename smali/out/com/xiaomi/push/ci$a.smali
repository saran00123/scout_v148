.class public abstract Lcom/xiaomi/push/ci$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:I

.field protected a:Lcom/xiaomi/push/cg;

.field private a:Lcom/xiaomi/push/ci$a;

.field private a:Ljava/lang/String;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/Random;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/util/Random;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/ci$a;->a:I

    iput-object p1, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    invoke-virtual {v0}, Lcom/xiaomi/push/cg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/ci$a;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/push/ci$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ci$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Lcom/xiaomi/push/ci;->a(Landroid/content/Context;)Lcom/xiaomi/push/ci;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci$a;)V

    return-void
.end method

.method a(Lcom/xiaomi/push/cg;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    iget-object p1, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    invoke-virtual {p1}, Lcom/xiaomi/push/cg;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/ci$a;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/xiaomi/push/ci$a;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/ci$a;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_40

    :cond_20
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/push/ci$a;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/push/ck;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/ck;-><init>(Lcom/xiaomi/push/ci$a;Landroid/content/Context;)V

    invoke-static {v0, v2, v1}, Lcom/xiaomi/push/x;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/Runnable;)V

    :cond_40
    :goto_40
    return-void
.end method
