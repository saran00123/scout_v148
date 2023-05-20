.class public Lcom/alibaba/sdk/android/push/common/util/a/a;
.super Ljava/lang/Exception;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/alibaba/sdk/android/push/common/util/a/a;->a:I

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/common/util/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/common/util/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
