double percentage = 0;
double payment = 0;
double? valueTip;

double tip (String percen, String pay){
  percentage = double.parse(percen);
  payment = double.parse(pay);
  valueTip = (payment * percentage) / 100;
  return valueTip!;
}