.class public Lcom/xiaomi/push/service/bo;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/ii;)Lcom/xiaomi/push/ii;
    .registers 3

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/push/ii;->b:Ljava/util/Map;

    const-string v1, "score_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method
