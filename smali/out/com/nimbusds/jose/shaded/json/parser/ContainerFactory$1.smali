.class final Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory$1;
.super Ljava/lang/Object;
.source "ContainerFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createArrayContainer()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONArray;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public createObjectContainer()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONObject;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/JSONObject;-><init>()V

    return-object v0
.end method
