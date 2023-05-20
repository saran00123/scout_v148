.class Lcom/alibaba/sdk/android/push/g/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/g/f;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/g/f;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/f$a;->a:Lcom/alibaba/sdk/android/push/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/g/f$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/g/f$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/sdk/android/push/g/f$a;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/f$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/push/g/f$a;->d:J

    return-wide v0
.end method
