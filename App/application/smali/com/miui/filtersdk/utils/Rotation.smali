.class public final enum Lcom/miui/filtersdk/utils/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/filtersdk/utils/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum NORMAL:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

.field public static final enum ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const/4 v2, 0x1

    const-string v3, "ROTATION_90"

    invoke-direct {v0, v3, v2}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const/4 v3, 0x2

    const-string v4, "ROTATION_180"

    invoke-direct {v0, v4, v3}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    new-instance v0, Lcom/miui/filtersdk/utils/Rotation;

    const/4 v4, 0x3

    const-string v5, "ROTATION_270"

    invoke-direct {v0, v5, v4}, Lcom/miui/filtersdk/utils/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/filtersdk/utils/Rotation;

    .line 3
    sget-object v5, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v5, v0, v1

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/filtersdk/utils/Rotation;->$VALUES:[Lcom/miui/filtersdk/utils/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/miui/filtersdk/utils/Rotation;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-ne p0, v0, :cond_0

    .line 33
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_180:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    .line 30
    :cond_3
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0

    .line 29
    :cond_4
    sget-object p0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/filtersdk/utils/Rotation;
    .locals 1

    .line 3
    const-class v0, Lcom/miui/filtersdk/utils/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/filtersdk/utils/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/miui/filtersdk/utils/Rotation;
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->$VALUES:[Lcom/miui/filtersdk/utils/Rotation;

    invoke-virtual {v0}, [Lcom/miui/filtersdk/utils/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/filtersdk/utils/Rotation;

    return-object v0
.end method
