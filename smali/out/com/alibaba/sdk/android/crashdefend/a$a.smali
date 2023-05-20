.class Lcom/alibaba/sdk/android/crashdefend/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/crashdefend/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/crashdefend/a;

.field private b:Lcom/alibaba/sdk/android/crashdefend/a/b;

.field private c:I


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/crashdefend/a;Lcom/alibaba/sdk/android/crashdefend/a/b;I)V
    .registers 4

    iput-object p1, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->a:Lcom/alibaba/sdk/android/crashdefend/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->b:Lcom/alibaba/sdk/android/crashdefend/a/b;

    iput p3, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget v0, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->c:I

    iget v0, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->c:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->c:I

    if-gtz v0, :cond_3e

    iget-object v0, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->a:Lcom/alibaba/sdk/android/crashdefend/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->b:Lcom/alibaba/sdk/android/crashdefend/a/b;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/crashdefend/a;->a(Lcom/alibaba/sdk/android/crashdefend/a;Lcom/alibaba/sdk/android/crashdefend/a/b;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->a:Lcom/alibaba/sdk/android/crashdefend/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/crashdefend/a;->a(Lcom/alibaba/sdk/android/crashdefend/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->a:Lcom/alibaba/sdk/android/crashdefend/a;

    invoke-static {v1}, Lcom/alibaba/sdk/android/crashdefend/a;->b(Lcom/alibaba/sdk/android/crashdefend/a;)Lcom/alibaba/sdk/android/crashdefend/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/crashdefend/a$a;->a:Lcom/alibaba/sdk/android/crashdefend/a;

    invoke-static {v2}, Lcom/alibaba/sdk/android/crashdefend/a;->c(Lcom/alibaba/sdk/android/crashdefend/a;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/crashdefend/c/a;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/crashdefend/a/a;Ljava/util/List;)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2f} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_32
    .catchall {:try_start_2 .. :try_end_2f} :catchall_30

    goto :goto_3e

    :catchall_30
    move-exception v0

    goto :goto_3d

    :catch_32
    move-exception v0

    :try_start_33
    const-string v1, "CrashDefend"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    goto :goto_3e

    :goto_3d
    throw v0

    :catch_3e
    :cond_3e
    :goto_3e
    return-void
.end method
