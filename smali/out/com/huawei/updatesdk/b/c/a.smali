.class public Lcom/huawei/updatesdk/b/c/a;
.super Lcom/huawei/updatesdk/b/c/c;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "com.huawei.appmarket.car"

    return-object v0
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/huawei/updatesdk/a/a/d/h/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/huawei/updatesdk/a/a/d/h/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "38FD5031B1C4C081E382AC2EA7ABE8C107931CB30E15DEE9A8396E104572FFA4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
