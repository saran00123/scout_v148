.class public final Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;
.super Ljava/lang/Object;
.source "ApkInstallExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/extension/ApkInstallExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApkInstallService"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0007J\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004R \u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;",
        "",
        "()V",
        "processor",
        "Lio/reactivex/processors/FlowableProcessor;",
        "Lkotlin/Pair;",
        "",
        "",
        "dispatch",
        "",
        "flag",
        "packageName",
        "get",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

.field private static final processor:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

    invoke-direct {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;-><init>()V

    sput-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->INSTANCE:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

    .line 73
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    const-string v1, "PublishProcessor.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/processors/FlowableProcessor;

    sput-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->processor:Lio/reactivex/processors/FlowableProcessor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatch(ZLjava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->processor:Lio/reactivex/processors/FlowableProcessor;

    new-instance v1, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final get()Lio/reactivex/processors/FlowableProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    sget-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->processor:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method
