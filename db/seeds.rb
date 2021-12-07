# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Play.delete_all
Play.create!([
                 {
                     name: "Cậu Đồng",
                     description: "CẬU ĐỒNG là một trong vở diễn ăn khách nhất của Sân khấu kịch Idecaf ra đời cách đây 23 năm từng có sự tham gia của nhiều thế hệ diễn viên gạo cội của sân khấu Kịch Idecaf. Đến nay, tác phẩm đạt kỷ lục về suất diễn của Idecaf. Tác phẩm do NSND Trần Minh Ngọc Việt hoá và dàn dựng dựa theo vở hài kịch của Molière - nhà biên kịch, diễn viên người Pháp. Ra đời năm 1997, Cậu đồng có hơn 250 suất diễn luôn trong tình trạng cháy vé. Ngay từ khi có thông tin sân khấu dựng lại đã thu hút sự chú ý của khán giả.",
                     from_price: 12.00,
                     starts_at: 10.day.from_now
                 },
                 {
                     name: "Ác Nhân Cốc",
                     description: "Chuyện kể về cái cốc thờ cô Thơm mà nhân vật nữ chính là cô Lon (vai diễn của NS Hương Giang) đã lập ra để khuyên nhủ những người mất niềm tin. Ban đầu dễ lầm tưởng vở diễn đả phá nạn mê tín dị đoan nhưng câu chuyện gây nhiều bất ngờ khi đưa người xem tiếp cận nhiều vấn đề trong đời sống hôm nay. Cốc mang tên ác nhân nhưng rất nhân ái, bao dung. Cô Lon mượn sự mê tín để hướng những người đang mất điểm tựa có thêm nghị lực mà sống tốt, hướng thiện.",
                     from_price: 10.00,
                     starts_at: 20.day.ago
                 },
                 {
                     name: "Mơ Giấc Tình Tình",
                     description: "Mơ giấc tình tình là vở kịch độc đáo thể hiện một màu sắc mới mẻ, trẻ trung ở khâu kịch bản và dàn dựng của sân khấu kịch Idecaf. Nội dung vở diễn khá thú vị khi đan xen giữa thế giới của các vị thần ở một khu rừng tình yêu người thường không thể thấy và thế giới của một nhóm bạn trẻ đi cắm trại trong khu rừng ấy. Câu chuyện tình yêu trục trặc giữa vợ chồng hai vị thần cai quản khu rừng song song với những khúc mắc tình yêu của các bạn trẻ đang cắm trại trong rừng đã bị tác động bởi một phép thuật khiến tình yêu của họ rối loạn. Cuối cùng vị tiên gây ra phép thuật này đã hy sinh để sửa chữa sai lầm với ý nghĩa tình yêu thì phải xứng đáng, chân thật, chung thủy dù phải trải qua sầu bi, buồn khổ để thanh lọc tâm hồn. Tình yêu không chỉ có mơ mộng, cuồng nhiệt bất chấp tất cả, mà tình yêu có cả nỗi đau, sự hy sinh để xứng đáng với nó.",
                     from_price: 12.00,
                     starts_at: 12.day.from_now
                 }
             ])

Booking.delete_all
Booking.create!([{
                    name: "Joe Smith",
                    email: "joesmith@email.com",
                    how_heard: "Blog Post",
                    play_id: 1
                 },
                 {
                    name: "Kara Loft",
                    email: "karaloft@email.com",
                    how_heard: "Twitter",
                    play_id: 2
                 },
                 {
                     name: "Tween Ni",
                     email: "tweenni@gmail.com",
                     how_heard: "Twitter",
                     play_id: 3
                 }
                ])