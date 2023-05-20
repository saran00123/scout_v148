.class public final La/a/a/a/b/k$a;
.super La/a/a/a/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/stripe/android/stripe3ds2/init/Warning;


# instance fields
.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/Warning;

    sget-object v1, Lcom/stripe/android/stripe3ds2/init/Warning$Severity;->MEDIUM:Lcom/stripe/android/stripe3ds2/init/Warning$Severity;

    const-string v2, "SW04"

    const-string v3, "A debugger is attached to the App."

    invoke-direct {v0, v2, v3, v1}, Lcom/stripe/android/stripe3ds2/init/Warning;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/Warning$Severity;)V

    sput-object v0, La/a/a/a/b/k$a;->c:Lcom/stripe/android/stripe3ds2/init/Warning;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    sget-object v0, La/a/a/a/b/k$a;->c:Lcom/stripe/android/stripe3ds2/init/Warning;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/a/a/a/b/k;-><init>(Lcom/stripe/android/stripe3ds2/init/Warning;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, La/a/a/a/b/k$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, La/a/a/a/b/k$a;->b:Z

    return v0
.end method
