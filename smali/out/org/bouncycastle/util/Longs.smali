.class public Lorg/bouncycastle/util/Longs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse(J)J
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static reverseBytes(J)J
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static rotateLeft(JI)J
    .registers 3

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static rotateRight(JI)J
    .registers 3

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
