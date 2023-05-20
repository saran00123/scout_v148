.class public final Lzlc/season/rxdownload3/core/Deleted;
.super Lzlc/season/rxdownload3/core/Status;
.source "Status.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/Deleted;",
        "Lzlc/season/rxdownload3/core/Status;",
        "status",
        "(Lzlc/season/rxdownload3/core/Status;)V",
        "isImportant",
        "",
        "toString",
        "",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/Status;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/Status;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method


# virtual methods
.method public isImportant()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Deleted"

    return-object v0
.end method
