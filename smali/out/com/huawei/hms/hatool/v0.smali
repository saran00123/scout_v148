.class public Lcom/huawei/hms/hatool/v0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/huawei/hms/hatool/w0;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/hatool/w0;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/hatool/v0;->a:Lcom/huawei/hms/hatool/w0;

    iput-object p2, p0, Lcom/huawei/hms/hatool/v0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/hatool/w0;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/v0;->a:Lcom/huawei/hms/hatool/w0;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/v0;->b:Ljava/lang/String;

    return-object v0
.end method
