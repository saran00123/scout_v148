.class public Lcom/huawei/hms/framework/network/grs/local/model/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/local/model/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/local/model/c;
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/framework/network/grs/local/model/c;

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    return-void
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/local/model/c;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/a;->a:Ljava/lang/String;

    return-void
.end method
