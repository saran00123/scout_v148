.class final Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;
.super Ljava/lang/Object;
.source "ApkOpenExtension.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/extension/ApkOpenExtension;->action()Lio/reactivex/Maybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/reactivex/MaybeEmitter;",
        "",
        "kotlin.jvm.PlatformType",
        "subscribe"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/extension/ApkOpenExtension;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/extension/ApkOpenExtension;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkOpenExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 4
    .param p1    # Lio/reactivex/MaybeEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeEmitter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkOpenExtension;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RealMission;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->access$setApkFile$p(Lzlc/season/rxdownload3/extension/ApkOpenExtension;Ljava/io/File;)V

    .line 32
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkOpenExtension;

    invoke-static {v0}, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->access$getApkFile$p(Lzlc/season/rxdownload3/extension/ApkOpenExtension;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    .line 35
    :cond_1b
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkOpenExtension;

    invoke-static {v0}, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->access$openApp(Lzlc/season/rxdownload3/extension/ApkOpenExtension;)V

    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
