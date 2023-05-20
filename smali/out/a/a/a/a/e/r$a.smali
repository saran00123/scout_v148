.class public final La/a/a/a/e/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:La/a/a/a/e/r$a$b;

.field public static final b:La/a/a/a/e/r$a$a;

.field public static final synthetic c:La/a/a/a/e/r$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, La/a/a/a/e/r$a;

    invoke-direct {v0}, La/a/a/a/e/r$a;-><init>()V

    sput-object v0, La/a/a/a/e/r$a;->c:La/a/a/a/e/r$a;

    new-instance v1, La/a/a/a/e/r$a$b;

    invoke-direct {v1, v0}, La/a/a/a/e/r$a$b;-><init>(La/a/a/a/e/r$a;)V

    sput-object v1, La/a/a/a/e/r$a;->a:La/a/a/a/e/r$a$b;

    new-instance v0, La/a/a/a/e/r$a$a;

    invoke-direct {v0}, La/a/a/a/e/r$a$a;-><init>()V

    sput-object v0, La/a/a/a/e/r$a;->b:La/a/a/a/e/r$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/e/r;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, La/a/a/a/e/r$a;->b:La/a/a/a/e/r$a$a;

    return-object v0
.end method

.method public final b()La/a/a/a/e/r;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, La/a/a/a/e/r$a;->a:La/a/a/a/e/r$a$b;

    return-object v0
.end method
