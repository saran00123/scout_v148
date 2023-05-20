.class Lcom/alibaba/sdk/android/push/g/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/a;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/push/g/c<",
        "Lcom/alibaba/sdk/android/push/g/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/CommonCallback;

.field final synthetic b:Lcom/alibaba/sdk/android/push/g/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/g/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/push/g/d;Lcom/alibaba/sdk/android/push/g/e;)V
    .registers 5

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->d()Z

    move-result p1

    if-eqz p1, :cond_26

    const-class p1, Lcom/alibaba/sdk/android/push/g/a;

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/g/a$a;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/g/a$a;->quit()Z

    monitor-exit p1

    goto :goto_26

    :catchall_23
    move-exception p2

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw p2

    :cond_26
    :goto_26
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AMS]work call back: -- code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/g/b;->a(Lcom/alibaba/sdk/android/push/CommonCallback;Lcom/alibaba/sdk/android/push/g/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/alibaba/sdk/android/push/g/e;)V
    .registers 3

    check-cast p1, Lcom/alibaba/sdk/android/push/g/d;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/push/g/a$2;->a(Lcom/alibaba/sdk/android/push/g/d;Lcom/alibaba/sdk/android/push/g/e;)V

    return-void
.end method
