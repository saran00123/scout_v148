.class public final La/a/a/a/e/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:La/a/a/a/d/i;

.field public final b:La/a/a/a/c/c;


# direct methods
.method public constructor <init>(La/a/a/a/d/i;La/a/a/a/c/c;)V
    .registers 4
    .param p1    # La/a/a/a/d/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "messageTransformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/i$a;->a:La/a/a/a/d/i;

    iput-object p2, p0, La/a/a/a/e/i$a;->b:La/a/a/a/c/c;

    return-void
.end method


# virtual methods
.method public a(Ljavax/crypto/SecretKey;)La/a/a/a/e/h;
    .registers 5

    const-string v0, "secretKey"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/e/h$a;

    iget-object v1, p0, La/a/a/a/e/i$a;->a:La/a/a/a/d/i;

    iget-object v2, p0, La/a/a/a/e/i$a;->b:La/a/a/a/c/c;

    invoke-direct {v0, v1, p1, v2}, La/a/a/a/e/h$a;-><init>(La/a/a/a/d/i;Ljavax/crypto/SecretKey;La/a/a/a/c/c;)V

    return-object v0
.end method
