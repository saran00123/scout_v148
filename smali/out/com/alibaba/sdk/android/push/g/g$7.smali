.class Lcom/alibaba/sdk/android/push/g/g$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
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

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/g$7;->c:Lcom/alibaba/sdk/android/push/g/g;

    iput-wide p2, p0, Lcom/alibaba/sdk/android/push/g/g$7;->a:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/push/g/g$7;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$7;->c:Lcom/alibaba/sdk/android/push/g/g;

    const-string v1, "/unbind-account"

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$7;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$7;->c:Lcom/alibaba/sdk/android/push/g/g;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$7;->c:Lcom/alibaba/sdk/android/push/g/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/sdk/android/push/g/g$7;->a:J

    sub-long/2addr v1, v3

    const-string v3, "/unbind-account"

    invoke-static {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g$7;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_1c

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
