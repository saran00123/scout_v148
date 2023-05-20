.class public Lzlc/season/rxdownload3/core/Mission;
.super Ljava/lang/Object;
.source "Mission.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B3\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tBE\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000cB\u000f\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010$\u001a\u00020\u00072\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010&\u001a\u00020\'H\u0016R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001c\"\u0004\u0008\u001f\u0010\u000fR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001c\"\u0004\u0008#\u0010\u000f\u00a8\u0006("
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/Mission;",
        "",
        "url",
        "",
        "saveName",
        "savePath",
        "overwrite",
        "",
        "enableNotification",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "rangeFlag",
        "tag",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZZ)V",
        "mission",
        "(Lzlc/season/rxdownload3/core/Mission;)V",
        "(Ljava/lang/String;)V",
        "getEnableNotification",
        "()Z",
        "setEnableNotification",
        "(Z)V",
        "getOverwrite",
        "setOverwrite",
        "getRangeFlag",
        "()Ljava/lang/Boolean;",
        "setRangeFlag",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getSaveName",
        "()Ljava/lang/String;",
        "setSaveName",
        "getSavePath",
        "setSavePath",
        "getTag",
        "setTag",
        "getUrl",
        "setUrl",
        "equals",
        "other",
        "hashCode",
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


# instance fields
.field private enableNotification:Z

.field private overwrite:Z

.field private rangeFlag:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private saveName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private savePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->url:Ljava/lang/String;

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->url:Ljava/lang/String;

    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/Mission;->enableNotification:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZZ)V
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lzlc/season/rxdownload3/core/Mission;->rangeFlag:Ljava/lang/Boolean;

    .line 36
    iput-object p5, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    .line 37
    iput-boolean p6, p0, Lzlc/season/rxdownload3/core/Mission;->overwrite:Z

    .line 38
    iput-boolean p7, p0, Lzlc/season/rxdownload3/core/Mission;->enableNotification:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 19

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v7, v0

    goto :goto_8

    :cond_7
    move v7, p6

    :goto_8
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    move v8, v0

    goto :goto_11

    :cond_f
    move/from16 v8, p7

    :goto_11
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 31
    invoke-direct/range {v1 .. v8}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Lzlc/season/rxdownload3/core/Mission;->overwrite:Z

    .line 21
    iput-boolean p5, p0, Lzlc/season/rxdownload3/core/Mission;->enableNotification:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_b

    const/4 p5, 0x1

    :cond_b
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lzlc/season/rxdownload3/core/Mission;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Mission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p1, Lzlc/season/rxdownload3/core/Mission;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v0, p1, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    iput-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    iput-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lzlc/season/rxdownload3/core/Mission;->rangeFlag:Ljava/lang/Boolean;

    iput-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->rangeFlag:Ljava/lang/Boolean;

    .line 45
    iget-object v0, p1, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    iput-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    .line 46
    iget-boolean p1, p1, Lzlc/season/rxdownload3/core/Mission;->overwrite:Z

    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/Mission;->overwrite:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 50
    move-object v0, p0

    check-cast v0, Lzlc/season/rxdownload3/core/Mission;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_7

    return v1

    :cond_7
    if-eqz p1, :cond_19

    .line 52
    check-cast p1, Lzlc/season/rxdownload3/core/Mission;

    .line 54
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    iget-object p1, p1, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    return v1

    .line 52
    :cond_19
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type zlc.season.rxdownload3.core.Mission"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getEnableNotification()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/Mission;->enableNotification:Z

    return v0
.end method

.method public final getOverwrite()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/Mission;->overwrite:Z

    return v0
.end method

.method public final getRangeFlag()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->rangeFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSaveName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSavePath()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 60
    iget-object v0, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setEnableNotification(Z)V
    .registers 2

    .line 9
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/Mission;->enableNotification:Z

    return-void
.end method

.method public final setOverwrite(Z)V
    .registers 2

    .line 8
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/Mission;->overwrite:Z

    return-void
.end method

.method public final setRangeFlag(Ljava/lang/Boolean;)V
    .registers 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 6
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->rangeFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSaveName(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->saveName:Ljava/lang/String;

    return-void
.end method

.method public final setSavePath(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->savePath:Ljava/lang/String;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lzlc/season/rxdownload3/core/Mission;->url:Ljava/lang/String;

    return-void
.end method
