.class public final La/a/a/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La/a/a/a/c/c;


# direct methods
.method public constructor <init>(La/a/a/a/c/c;)V
    .registers 3
    .param p1    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorReporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/d/j;->a:La/a/a/a/c/c;

    return-void
.end method
