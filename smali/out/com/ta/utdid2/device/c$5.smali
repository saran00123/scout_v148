.class final Lcom/ta/utdid2/device/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/utdid2/device/c;->a(Lcom/ta/utdid2/device/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/device/c$a;


# direct methods
.method constructor <init>(Lcom/ta/utdid2/device/c$a;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/ta/utdid2/device/c$5;->a:Lcom/ta/utdid2/device/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 408
    :try_start_0
    invoke-static {}, Lcom/ta/a/e/e;->a()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4} :catch_15
    .catchall {:try_start_0 .. :try_end_4} :catchall_10

    if-nez v0, :cond_a

    .line 417
    invoke-static {}, Lcom/ta/a/e/e;->e()V

    return-void

    .line 413
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ta/utdid2/device/c$5;->a:Lcom/ta/utdid2/device/c$a;

    invoke-interface {v0}, Lcom/ta/utdid2/device/c$a;->i()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_15
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    move-exception v0

    .line 417
    invoke-static {}, Lcom/ta/a/e/e;->e()V

    throw v0

    :catch_15
    :goto_15
    invoke-static {}, Lcom/ta/a/e/e;->e()V

    return-void
.end method
