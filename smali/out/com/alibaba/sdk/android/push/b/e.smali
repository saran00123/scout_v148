.class public Lcom/alibaba/sdk/android/push/b/e;
.super Ljava/lang/Exception;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/alibaba/sdk/android/push/b/e;->a:I

    iput p3, p0, Lcom/alibaba/sdk/android/push/b/e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/b/e;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/b/e;->b:I

    return v0
.end method
