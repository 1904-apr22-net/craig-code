using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace MySoapService
{
    public class UnitConversionService : IUnitConversionService
    {
        public double FarenheitToCelsius(double farenheit)
        {
            throw new NotImplementedException();
        }

        public double FeetToMeters(double feet)
        {
            return 0.3048 * feet;
        }
    }
}
