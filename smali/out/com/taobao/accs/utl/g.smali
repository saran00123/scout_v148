.class public Lcom/taobao/accs/utl/g;
.super Ljava/io/ByteArrayOutputStream;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(B)Lcom/taobao/accs/utl/g;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/g;->write(I)V

    return-object p0
.end method

.method public a(S)Lcom/taobao/accs/utl/g;
    .registers 3

    shr-int/lit8 v0, p1, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/g;->write(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/g;->write(I)V

    return-object p0
.end method
