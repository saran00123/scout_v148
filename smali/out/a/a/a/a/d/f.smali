.class public final La/a/a/a/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La/a/a/a/d/e;

.field public final b:La/a/a/a/d/b;


# direct methods
.method public constructor <init>(La/a/a/a/d/e;La/a/a/a/c/c;)V
    .registers 4
    .param p1    # La/a/a/a/d/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ephemeralKeyPairGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/d/m;

    invoke-direct {v0, p2}, La/a/a/a/d/m;-><init>(La/a/a/a/c/c;)V

    invoke-direct {p0, p1, v0}, La/a/a/a/d/f;-><init>(La/a/a/a/d/e;La/a/a/a/d/b;)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/d/e;La/a/a/a/d/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/d/f;->a:La/a/a/a/d/e;

    iput-object p2, p0, La/a/a/a/d/f;->b:La/a/a/a/d/b;

    return-void
.end method
