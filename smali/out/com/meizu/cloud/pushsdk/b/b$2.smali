.class Lcom/meizu/cloud/pushsdk/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/b/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/b/b;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/b/b;->a(Lcom/meizu/cloud/pushsdk/b/b;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/b/b;->b(Lcom/meizu/cloud/pushsdk/b/b;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/b/b;->a(Lcom/meizu/cloud/pushsdk/b/b;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/b/b;->a(Lcom/meizu/cloud/pushsdk/b/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_6e

    :try_start_26
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/b/b;->d(Lcom/meizu/cloud/pushsdk/b/b;)Lcom/meizu/cloud/pushsdk/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/b/b;->c(Lcom/meizu/cloud/pushsdk/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/b/e;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/cloud/pushsdk/b/b$a;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/b/b;->d(Lcom/meizu/cloud/pushsdk/b/b;)Lcom/meizu/cloud/pushsdk/b/e;

    move-result-object v2

    iget-object v3, v1, Lcom/meizu/cloud/pushsdk/b/b$a;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/meizu/cloud/pushsdk/b/b$a;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/b/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/meizu/cloud/pushsdk/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_54} :catch_6a
    .catchall {:try_start_26 .. :try_end_54} :catchall_5f

    goto :goto_39

    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    :goto_57
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/b/b;->d(Lcom/meizu/cloud/pushsdk/b/b;)Lcom/meizu/cloud/pushsdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/b/e;->a()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_6d

    goto :goto_6d

    :catchall_5f
    move-exception v0

    :try_start_60
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/b/b;->d(Lcom/meizu/cloud/pushsdk/b/b;)Lcom/meizu/cloud/pushsdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/b/e;->a()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_69

    :catch_69
    throw v0

    :catch_6a
    :try_start_6a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/b$2;->a:Lcom/meizu/cloud/pushsdk/b/b;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6c} :catch_6d

    goto :goto_57

    :catch_6d
    :goto_6d
    return-void

    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method
