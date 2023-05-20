.class Lcom/alibaba/sdk/android/push/g/g$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/g;->b(Lcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/sdk/android/push/CommonCallback;

.field final synthetic c:Lcom/alibaba/sdk/android/push/g/g;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/g$13;->c:Lcom/alibaba/sdk/android/push/g/g;

    iput-wide p2, p0, Lcom/alibaba/sdk/android/push/g/g$13;->a:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/push/g/g$13;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$13;->c:Lcom/alibaba/sdk/android/push/g/g;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/list-alias"

    invoke-static {v0, v1, p2, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$13;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string/jumbo v1, "store cache"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$13;->c:Lcom/alibaba/sdk/android/push/g/g;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$13;->c:Lcom/alibaba/sdk/android/push/g/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/sdk/android/push/g/g$13;->a:J

    sub-long/2addr v1, v3

    const-string v3, "/list-alias"

    invoke-static {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$13;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    :cond_25
    return-void
.end method
