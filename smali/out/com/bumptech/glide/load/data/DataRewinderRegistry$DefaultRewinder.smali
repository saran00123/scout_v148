.class final Lcom/bumptech/glide/load/data/DataRewinderRegistry$DefaultRewinder;
.super Ljava/lang/Object;
.source "DataRewinderRegistry.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/DataRewinderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultRewinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataRewinder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/bumptech/glide/load/data/DataRewinderRegistry$DefaultRewinder;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    return-void
.end method

.method public rewindAndGet()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/load/data/DataRewinderRegistry$DefaultRewinder;->data:Ljava/lang/Object;

    return-object v0
.end method