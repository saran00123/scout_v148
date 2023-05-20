.class Lcom/alibaba/sdk/android/push/g/g$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/g;->a(ILcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/sdk/android/push/CommonCallback;

.field final synthetic d:Lcom/alibaba/sdk/android/push/g/g;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/g;JILcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/g$10;->d:Lcom/alibaba/sdk/android/push/g/g;

    iput-wide p2, p0, Lcom/alibaba/sdk/android/push/g/g$10;->a:J

    iput p4, p0, Lcom/alibaba/sdk/android/push/g/g$10;->b:I

    iput-object p5, p0, Lcom/alibaba/sdk/android/push/g/g$10;->c:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$10;->d:Lcom/alibaba/sdk/android/push/g/g;

    const-string v1, "/list-tag"

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$10;->c:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$10;->d:Lcom/alibaba/sdk/android/push/g/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/sdk/android/push/g/g$10;->a:J

    sub-long/2addr v1, v3

    const-string v3, "/list-tag"

    invoke-static {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;J)V

    iget v0, p0, Lcom/alibaba/sdk/android/push/g/g$10;->b:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_23

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string/jumbo v1, "store cache"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$10;->d:Lcom/alibaba/sdk/android/push/g/g;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;ILjava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$10;->c:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_2a

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method
