.class final Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Distinct.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/FlowKt__DistinctKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;->INSTANCE:Lkotlinx/coroutines/flow/FlowKt__DistinctKt$defaultKeySelector$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    return-object p1
.end method
