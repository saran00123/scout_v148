.class public Lanetwork/channel/entity/BasicHeader;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/Header;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 28
    iput-object p1, p0, Lanetwork/channel/entity/BasicHeader;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lanetwork/channel/entity/BasicHeader;->value:Ljava/lang/String;

    return-void

    .line 26
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lanetwork/channel/entity/BasicHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lanetwork/channel/entity/BasicHeader;->value:Ljava/lang/String;

    return-object v0
.end method
