.class Lcom/xiaomi/push/fx;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/service/bd$b;Ljava/lang/String;Lcom/xiaomi/push/gj;)V
    .registers 11

    new-instance v0, Lcom/xiaomi/push/dw$c;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$c;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dw$c;->a(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    :cond_12
    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dw$c;->d(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    :cond_1f
    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dw$c;->e(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    :cond_2c
    iget-boolean v1, p0, Lcom/xiaomi/push/service/bd$b;->a:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_36

    move-object v1, v2

    goto :goto_37

    :cond_36
    move-object v1, v3

    :goto_37
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dw$c;->b(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "XIAOMI-SASL"

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/dw$c;->c(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    goto :goto_4d

    :cond_4a
    invoke-virtual {v0, v4}, Lcom/xiaomi/push/dw$c;->c(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    :goto_4d
    new-instance v1, Lcom/xiaomi/push/fy;

    invoke-direct {v1}, Lcom/xiaomi/push/fy;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/push/service/bd$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/fy;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/fy;->a(I)V

    iget-object v5, p0, Lcom/xiaomi/push/service/bd$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/fy;->b(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v6, "BIND"

    invoke-virtual {v1, v6, v5}, Lcom/xiaomi/push/fy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/xiaomi/push/fy;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Slim]: bind id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "challenge"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->c:Ljava/lang/String;

    const-string v7, "token"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    const-string v7, "chid"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->b:Ljava/lang/String;

    const-string v7, "from"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xiaomi/push/fy;->e()Ljava/lang/String;

    move-result-object p1

    const-string v7, "id"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "to"

    const-string v7, "xiaomi.com"

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/xiaomi/push/service/bd$b;->a:Z

    const-string v7, "kick"

    if-eqz p1, :cond_c3

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    :cond_c3
    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c6
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, ""

    const-string v3, "client_attrs"

    if-nez p1, :cond_d8

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->e:Ljava/lang/String;

    invoke-interface {v6, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_db

    :cond_d8
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_db
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v3, "cloud_attrs"

    if-nez p1, :cond_eb

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->f:Ljava/lang/String;

    invoke-interface {v6, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ee

    :cond_eb
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ee
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->d:Ljava/lang/String;

    const-string v2, "XIAOMI-PASS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10a

    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->d:Ljava/lang/String;

    const-string v2, "XMPUSH-PASS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_103

    goto :goto_10a

    :cond_103
    iget-object p0, p0, Lcom/xiaomi/push/service/bd$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-object p0, v5

    goto :goto_112

    :cond_10a
    :goto_10a
    iget-object p1, p0, Lcom/xiaomi/push/service/bd$b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/push/service/bd$b;->h:Ljava/lang/String;

    invoke-static {p1, v5, v6, p0}, Lcom/xiaomi/push/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_112
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dw$c;->f(Ljava/lang/String;)Lcom/xiaomi/push/dw$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/dw$c;->a()[B

    move-result-object p0

    invoke-virtual {v1, p0, v5}, Lcom/xiaomi/push/fy;->a([BLjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/xiaomi/push/gj;->b(Lcom/xiaomi/push/fy;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/gj;)V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/fy;

    invoke-direct {v0}, Lcom/xiaomi/push/fy;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fy;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fy;->a(I)V

    const-string p0, "UBND"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/fy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/push/gj;->b(Lcom/xiaomi/push/fy;)V

    return-void
.end method
