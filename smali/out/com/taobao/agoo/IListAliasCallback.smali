.class public abstract Lcom/taobao/agoo/IListAliasCallback;
.super Lcom/taobao/agoo/ICallback;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/taobao/agoo/ICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .registers 1

    return-void
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
