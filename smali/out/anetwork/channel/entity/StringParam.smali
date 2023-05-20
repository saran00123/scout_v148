.class public Lanetwork/channel/entity/StringParam;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/Param;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lanetwork/channel/entity/StringParam;->key:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lanetwork/channel/entity/StringParam;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lanetwork/channel/entity/StringParam;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lanetwork/channel/entity/StringParam;->value:Ljava/lang/String;

    return-object v0
.end method
